.class public final Lcom/support/panel/R$styleable;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COUIBottomSheetDialog:[I

.field public static final COUIBottomSheetDialog_couiHandleViewHasPressAnim:I = 0x0

.field public static final COUIBottomSheetDialog_panelBackground:I = 0x1

.field public static final COUIBottomSheetDialog_panelBackgroundTintColor:I = 0x2

.field public static final COUIBottomSheetDialog_panelDragViewIcon:I = 0x3

.field public static final COUIBottomSheetDialog_panelDragViewTintColor:I = 0x4

.field public static final COUIDraggableVerticalLinearLayout:[I

.field public static final COUIDraggableVerticalLinearLayout_dragViewIcon:I = 0x0

.field public static final COUIDraggableVerticalLinearLayout_dragViewTintColor:I = 0x1

.field public static final COUIDraggableVerticalLinearLayout_hasShadowNinePatchDrawable:I = 0x2

.field public static final COUIPanelPercentFrameLayout:[I

.field public static final COUIPanelPercentFrameLayout_maxPanelHeight:I = 0x0

.field public static final IgnoreWindowInsetsFrameLayout:[I

.field public static final IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsBottom:I = 0x0

.field public static final IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsLeft:I = 0x1

.field public static final IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsRight:I = 0x2

.field public static final IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsTop:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04064d

    aput v2, v0, v1

    sput-object v0, Lcom/support/panel/R$styleable;->COUIPanelPercentFrameLayout:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/support/panel/R$styleable;->IgnoreWindowInsetsFrameLayout:[I

    return-void

    :array_24
    .array-data 4
        0x7f040260
        0x7f0406e7
        0x7f0406e8
        0x7f0406e9
        0x7f0406ea
    .end array-data

    :array_32
    .array-data 4
        0x7f040419
        0x7f04041a
        0x7f0404da
    .end array-data

    :array_3c
    .array-data 4
        0x7f04051f
        0x7f040520
        0x7f040521
        0x7f040522
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
