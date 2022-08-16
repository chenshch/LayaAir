/**
 * @private
 * 静态常量集合
 */
export class Const {
    static ENUM_TEXTALIGN_DEFAULT: number = 0;
    static ENUM_TEXTALIGN_CENTER: number = 1;
    static ENUM_TEXTALIGN_RIGHT: number = 2;

    static BYTES_PE: number = 4;
    static BYTES_PIDX: number = 2;
}

/**
 * @private
 * 节点标志
 */
export class NodeFlags {
    static NOT_ACTIVE: number = 0x01;
    static ACTIVE_INHIERARCHY: number = 0x02;
    static AWAKED: number = 0x04;
    static NOT_READY: number = 0x08;
    static DISPLAY: number = 0x10;
    static HAS_ZORDER: number = 0x20;
    static HAS_MOUSE: number = 0x40;
    static DISPLAYED_INSTAGE: number = 0x80;
    static DRAWCALL_OPTIMIZE: number = 0x100;
    static PROCESS_COLLISIONS: number = 0x200;
    static PROCESS_TRIGGERS: number = 0x400;
    static HAS_SCRIPT: number = 0x800;
}

export class HideFlags {
    static HideInHierarchy = 0x1;
    static HideInInspector = 0x2;
    static DontSave = 0x4;
    static HideAndDontSave = 0x7;
}