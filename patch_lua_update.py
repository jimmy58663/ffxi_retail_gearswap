from pathlib import Path
import re

root = Path(r"g:\Program Files (x86)\Windower\addons\GearSwap\data")
for path in sorted(root.glob("*.lua")):
    text = path.read_text(encoding="utf-8").replace("\r\n", "\n")
    modified = False

    if "local Common_Funcs = include('Common_Funcs')" not in text:
        m = re.search(r"^include\('organizer-lib'\)\s*$", text, re.M)
        if m:
            insert_pos = m.end()
            text = text[:insert_pos] + "\nlocal Common_Funcs = include('Common_Funcs')" + text[insert_pos:]
            modified = True
        else:
            m = re.search(r"^include\(", text, re.M)
            if m:
                insert_pos = text.find("\n", m.end())
                if insert_pos == -1:
                    text = text + "\nlocal Common_Funcs = include('Common_Funcs')"
                else:
                    text = text[:insert_pos] + "\nlocal Common_Funcs = include('Common_Funcs')" + text[insert_pos:]
                modified = True

    m = re.search(r"^function self_command\(command\)(.*?)(?=^function\s|\Z)", text, re.S | re.M)
    if m:
        block = m.group(1)
        block_clean = re.sub(r"^[ \t]*elseif command:lower\(\) == ['\"]update['\"] then\s*\n^[ \t]*Common_Funcs\.Update_Gear\(\)\s*\n", "", block, flags=re.M)
        block_clean = re.sub(r"^[ \t]*Common_Funcs\.Update_Gear\(\)\s*\n", "", block_clean, flags=re.M)
        block_clean = re.sub(r"^[ \t]*elseif command:lower\(\) == ['\"]update['\"] then\s*$\n", "", block_clean, flags=re.M)
        if block_clean != block:
            block = block_clean
            modified = True
        if "Common_Funcs.Update_Gear()" not in block:
            end_match = re.search(r"\n([ \t]*)end\s*$", block)
            if end_match:
                indent = end_match.group(1)
                insertion = f"\n{indent}elseif command:lower() == 'update' then\n{indent}\tCommon_Funcs.Update_Gear()\n"
                block = block[: end_match.start()] + insertion + block[end_match.start():]
                text = text[: m.start(1)] + block + text[m.end(1):]
                modified = True

    if modified:
        path.write_text(text.replace("\n", "\r\n"), encoding="utf-8")
        print(f"Patched {path.name}")
