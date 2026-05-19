.class interface abstract Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StageController"
.end annotation


# virtual methods
.method public abstract exitStage(I)V
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
.end method

.method public abstract grantFocusToStage(I)V
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
.end method

.method public abstract swapStages()V
.end method
