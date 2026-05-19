.class public Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$OnAdvancedDragSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;,
        Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;,
        Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;
    }
.end annotation


# instance fields
.field private checkSelectionState:Z

.field private firstWasSelected:Z

.field private mModeType:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

.field private originalSelection:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

.field private startFinishedListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkSelectionState:Z

    sget-object v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;->Simple:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    iput-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->mModeType:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->startFinishedListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;

    return-void
.end method

.method private checkedUpdateSelection(IIZ)V
    .registers 6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkSelectionState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    :goto_5
    if-gt p1, p2, :cond_1c

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->isSelected(I)Z

    move-result v0

    if-eq v0, p3, :cond_14

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    invoke-interface {v0, p1, p1, p3, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->updateSelection(IIZZ)V

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_17
    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    invoke-interface {p0, p1, p2, p3, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->updateSelection(IIZZ)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public onSelectChange(IIZ)V
    .registers 8

    sget-object v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$1;->$SwitchMap$androidx$recyclerview$widget$MultipleChoiceDragSelectionProcessor$ModeType:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->mModeType:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_42

    const/4 v3, 0x3

    if-eq v0, v3, :cond_34

    const/4 v3, 0x4

    if-eq v0, v3, :cond_18

    goto :goto_68

    :cond_18
    :goto_18
    if-gt p1, p2, :cond_68

    if-eqz p3, :cond_24

    iget-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->firstWasSelected:Z

    if-nez v0, :cond_22

    move v0, v2

    goto :goto_2e

    :cond_22
    move v0, v1

    goto :goto_2e

    :cond_24
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->originalSelection:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_2e
    invoke-direct {p0, p1, p1, v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkedUpdateSelection(IIZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_34
    if-eqz p3, :cond_3c

    iget-boolean p3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->firstWasSelected:Z

    if-nez p3, :cond_3e

    move v1, v2

    goto :goto_3e

    :cond_3c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->firstWasSelected:Z

    :cond_3e
    :goto_3e
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkedUpdateSelection(IIZ)V

    goto :goto_68

    :cond_42
    :goto_42
    if-gt p1, p2, :cond_68

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->originalSelection:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p3, :cond_55

    if-nez v0, :cond_54

    move v0, v2

    goto :goto_55

    :cond_54
    move v0, v1

    :cond_55
    :goto_55
    invoke-direct {p0, p1, p1, v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkedUpdateSelection(IIZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_5b
    iget-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkSelectionState:Z

    if-eqz v0, :cond_63

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkedUpdateSelection(IIZ)V

    goto :goto_68

    :cond_63
    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    invoke-interface {p0, p1, p2, p3, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->updateSelection(IIZZ)V

    :cond_68
    :goto_68
    return-void
.end method

.method public onSelectionFinished(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->originalSelection:Ljava/util/HashSet;

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->startFinishedListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;->onSelectionFinished(I)V

    :cond_a
    return-void
.end method

.method public onSelectionStarted(I)V
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->originalSelection:Ljava/util/HashSet;

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    invoke-interface {v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->getSelection()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->originalSelection:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->originalSelection:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->firstWasSelected:Z

    sget-object v0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$1;->$SwitchMap$androidx$recyclerview$widget$MultipleChoiceDragSelectionProcessor$ModeType:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->mModeType:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_49

    const/4 v2, 0x3

    if-eq v0, v2, :cond_40

    const/4 v2, 0x4

    if-eq v0, v2, :cond_37

    goto :goto_5f

    :cond_37
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->firstWasSelected:Z

    xor-int/2addr v2, v1

    invoke-interface {v0, p1, p1, v2, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->updateSelection(IIZZ)V

    goto :goto_5f

    :cond_40
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->firstWasSelected:Z

    xor-int/2addr v2, v1

    invoke-interface {v0, p1, p1, v2, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->updateSelection(IIZZ)V

    goto :goto_5f

    :cond_49
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    iget-object v2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->originalSelection:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-interface {v0, p1, p1, v2, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->updateSelection(IIZZ)V

    goto :goto_5f

    :cond_5a
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->selectionHandler:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;

    invoke-interface {v0, p1, p1, v1, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionHandler;->updateSelection(IIZZ)V

    :goto_5f
    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->startFinishedListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;

    if-eqz v0, :cond_68

    iget-boolean p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->firstWasSelected:Z

    invoke-interface {v0, p1, p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;->onSelectionStarted(IZ)V

    :cond_68
    return-void
.end method

.method public setCheckSelectionState(Z)Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->checkSelectionState:Z

    return-object p0
.end method

.method public setModeType(Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;)Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->mModeType:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ModeType;

    return-object p0
.end method

.method public withStartFinishedListener(Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;)Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor;->startFinishedListener:Landroidx/recyclerview/widget/MultipleChoiceDragSelectionProcessor$ISelectionStartFinishedListener;

    return-object p0
.end method
