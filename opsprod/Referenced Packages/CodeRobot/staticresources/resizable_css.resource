        /* Visual Aids */

html, body {
    height: 100%;
    width: 100%;
}

body {
    margin: 0;
    border: 0;
    padding: 0;
}

/* Resizable Grid */

.resizable-grid > .resizable-row > .resizable-column > .resizable-column-handle {
    z-index: 100;

    display: none;

    position: absolute;
    top: 0;

    height: 100%;
    width: 6px;

    cursor: col-resize;

    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;

    -ms-touch-action: none;
    touch-action: none;
}

.resizable-grid > .resizable-row > .resizable-column > .resizable-column-handle-w {
    left: 12px;
}

.resizable-grid > .resizable-row > .resizable-column > .resizable-column-handle-e {
    right: 12px;
}

.resizable-grid > .resizable-row > .resizable-column:first-child:not(:last-child) > .resizable-column-handle-e,
.resizable-grid > .resizable-row > .resizable-column:not(:first-child):not(:last-child) > .resizable-column-handle-w,
.resizable-grid > .resizable-row > .resizable-column:not(:first-child):not(:last-child) > .resizable-column-handle-e,
.resizable-grid > .resizable-row > .resizable-column:last-child:not(:first-child) > .resizable-column-handle-w {
    display: block;
}

.resizable-grid-resizing {
    cursor: col-resize;
}

.resizable-grid > .resizable-row-resizing > .resizable-column:not(.resizable-column-resizing) {
    opacity: 0.5;
}