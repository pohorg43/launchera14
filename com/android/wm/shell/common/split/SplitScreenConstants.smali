.class public Lcom/android/wm/shell/common/split/SplitScreenConstants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    }
.end annotation


# static fields
.field public static final CONTROLLED_ACTIVITY_TYPES:[I

.field public static final CONTROLLED_WINDOWING_MODES:[I

.field public static final CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

.field public static final FADE_DURATION:I = 0x85

.field public static final FLAG_IS_DIVIDER_BAR:I = 0x400000

.field public static final SPLIT_POSITION_BOTTOM_OR_RIGHT:I = 0x1

.field public static final SPLIT_POSITION_TOP_OR_LEFT:I = 0x0

.field public static final SPLIT_POSITION_UNDEFINED:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    return-void

    nop

    :array_1a
    .array-data 4
        0x1
        0x0
        0x78
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x0
        0x6
        0x64
        0x78
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final splitPositionToString(I)Ljava/lang/String;
    .registers 2
    .param p0  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_b
    const-string p0, "SPLIT_POSITION_BOTTOM_OR_RIGHT"

    return-object p0

    :cond_e
    const-string p0, "SPLIT_POSITION_TOP_OR_LEFT"

    return-object p0

    :cond_11
    const-string p0, "SPLIT_POSITION_UNDEFINED"

    return-object p0
.end method
