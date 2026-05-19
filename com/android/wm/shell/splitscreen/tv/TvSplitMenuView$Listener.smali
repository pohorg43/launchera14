.class interface abstract Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBackPress()V
.end method

.method public abstract onCloseStage(I)V
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
.end method

.method public abstract onFocusStage(I)V
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
.end method

.method public abstract onSwapPress()V
.end method
