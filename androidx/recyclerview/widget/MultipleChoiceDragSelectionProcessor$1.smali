.class synthetic Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$androidx$recyclerview$widget$MultipleChoiceDragSelectionProcessor$ModeType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;->values()[Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$1;->$SwitchMap$androidx$recyclerview$widget$MultipleChoiceDragSelectionProcessor$ModeType:[I

    :try_start_9
    sget-object v1, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;->Simple:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$1;->$SwitchMap$androidx$recyclerview$widget$MultipleChoiceDragSelectionProcessor$ModeType:[I

    sget-object v1, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;->ToggleAndUndo:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$1;->$SwitchMap$androidx$recyclerview$widget$MultipleChoiceDragSelectionProcessor$ModeType:[I

    sget-object v1, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;->FirstItemDependent:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$1;->$SwitchMap$androidx$recyclerview$widget$MultipleChoiceDragSelectionProcessor$ModeType:[I

    sget-object v1, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;->FirstItemDependentToggleAndUndo:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
