.class public Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DragNoSupportSplitTipsView"

.field private static final TIPS_TOP:I = 0x18


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragRootView:Landroid/widget/FrameLayout;

.field private mTipsImageView:Landroid/widget/ImageView;

.field private mTipsLayout:Landroid/widget/FrameLayout;

.field private mTipsTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mDragRootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method private getTipsText(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getApplicationName(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wm/shell/R$string;->recents_incompatible_app_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    :cond_15
    iget-object p0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->oplus_split_screen_failed_to_dock_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_27
    return-object p0
.end method

.method private hideTopAppNoSupportSplitTips(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_22

    sget-object p1, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->TAG:Ljava/lang/String;

    const-string v0, "hideTopAppNoSupportSplitTips() tip="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mDragRootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    :cond_22
    return-void
.end method

.method private showTopAppNoSupportSplitTips(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 4

    if-nez p1, :cond_a

    sget-object p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->TAG:Ljava/lang/String;

    const-string p1, "showTopAppNoSupportSplitTips() taskInfo was NULL"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->showTopAppNoSupportSplitTipsPad(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void

    :cond_1c
    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->showTopAppNoSupportSplitTipsNormal(Landroid/app/ActivityManager$RunningTaskInfo;)V

    sget-object p2, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->TAG:Ljava/lang/String;

    const-string v0, "showTopAppNoSupportSplitTips() tip="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",taskInfo="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private showTopAppNoSupportSplitTipsNormal(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->drag_layout_no_support_split_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/wm/shell/R$id;->drag_no_support_split_tips_imageview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/wm/shell/R$id;->drag_no_support_split_tips_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->getTipsText(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mDragRootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_50

    iget-object v2, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$color;->drag_no_support_split_tips_text_color_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_5c

    :cond_50
    iget-object v2, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$color;->drag_no_support_split_tips_text_color_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_5c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsTextview:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6b

    sget v0, Lcom/android/wm/shell/R$drawable;->drag_top_app_no_support_tip_icon_dark:I

    goto :goto_6d

    :cond_6b
    sget v0, Lcom/android/wm/shell/R$drawable;->drag_top_app_no_support_tip_icon_normal:I

    :goto_6d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private showTopAppNoSupportSplitTipsPad(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->drag_layout_no_support_split_title_pad:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/wm/shell/R$id;->drag_no_support_split_tips_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->getTipsText(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsTextview:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x41c00000  # 24.0f

    invoke-static {v3, v2}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mDragRootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$color;->drag_no_support_split_tips_text_color_dark_pad:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_66

    :cond_5a
    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$color;->drag_no_support_split_tips_text_color_normal_pad:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_66
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTopAppNoSupportSplitTipsPad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->mTipsLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setDragNoSupportSplitTipsShowIfNeeded(ZLandroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 6

    if-eqz p1, :cond_6

    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->showTopAppNoSupportSplitTips(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    goto :goto_2c

    :cond_6
    invoke-direct {p0, p2}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->hideTopAppNoSupportSplitTips(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_2c

    :catch_a
    move-exception p0

    sget-object p3, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDragNoSupportSplitTipsShowIfNeeded  show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",taskInfo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2c
    return-void
.end method
