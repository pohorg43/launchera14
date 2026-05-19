.class synthetic Lcom/android/launcher3/BubbleTextView$4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/BubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->values()[Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/BubbleTextView$4;->$SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I

    :try_start_9
    sget-object v1, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/launcher3/BubbleTextView$4;->$SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I

    sget-object v1, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_NEW_UPDATER_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/launcher3/BubbleTextView$4;->$SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I

    sget-object v1, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_GRADIENT_DRAWABLE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/launcher3/BubbleTextView$4;->$SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I

    sget-object v1, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_TEXT_NODE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/launcher3/BubbleTextView$4;->$SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I

    sget-object v1, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_ICON_NODE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
