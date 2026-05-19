.class public final synthetic Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->values()[Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->values()[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2b
    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_43} :catch_43

    :catch_43
    const/4 v4, 0x4

    :try_start_44
    sget-object v5, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4c

    :catch_4c
    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->values()[Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_55
    sget-object v5, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_TOP:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6d
    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_75} :catch_75

    :catch_75
    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
