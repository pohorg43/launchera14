.class public Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initButtons()V
    .registers 2

    sget v0, Lcom/android/wm/shell/R$id;->tv_split_main_menu_focus_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/android/wm/shell/R$id;->tv_split_main_menu_close_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/android/wm/shell/R$id;->tv_split_side_menu_focus_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/android/wm/shell/R$id;->tv_split_side_menu_close_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/android/wm/shell/R$id;->tv_split_menu_swap_stages:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;->onBackPress()V

    const/4 p0, 0x1

    return p0

    :cond_16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/wm/shell/R$id;->tv_split_main_menu_focus_button:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;->onFocusStage(I)V

    goto :goto_3c

    :cond_14
    sget v0, Lcom/android/wm/shell/R$id;->tv_split_main_menu_close_button:I

    if-ne p1, v0, :cond_1e

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;->onCloseStage(I)V

    goto :goto_3c

    :cond_1e
    sget v0, Lcom/android/wm/shell/R$id;->tv_split_side_menu_focus_button:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_29

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;->onFocusStage(I)V

    goto :goto_3c

    :cond_29
    sget v0, Lcom/android/wm/shell/R$id;->tv_split_side_menu_close_button:I

    if-ne p1, v0, :cond_33

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;->onCloseStage(I)V

    goto :goto_3c

    :cond_33
    sget v0, Lcom/android/wm/shell/R$id;->tv_split_menu_swap_stages:I

    if-ne p1, v0, :cond_3c

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;->onSwapPress()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->initButtons()V

    return-void
.end method

.method public setListener(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    return-void
.end method
