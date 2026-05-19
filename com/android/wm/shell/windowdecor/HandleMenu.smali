.class Lcom/android/wm/shell/windowdecor/HandleMenu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandleMenu"


# instance fields
.field private final mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field private mAppInfoPillHeight:I

.field private final mAppInfoPillPosition:Landroid/graphics/PointF;

.field private final mAppName:Ljava/lang/CharSequence;

.field private final mCaptionX:I

.field private final mCaptionY:I

.field private final mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private final mLayoutResId:I

.field private mMarginMenuSpacing:I

.field private mMarginMenuStart:I

.field private mMarginMenuTop:I

.field private mMenuWidth:I

.field private mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field private mMoreActionsPillHeight:I

.field private final mMoreActionsPillPosition:Landroid/graphics/PointF;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

.field private mShadowRadius:I

.field private final mShouldShowWindowingPill:Z

.field private final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field private mWindowingPillHeight:I

.field private final mWindowingPillPosition:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionX:I

    iput p4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionY:I

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppName:Ljava/lang/CharSequence;

    iput-boolean p9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadHandleMenuDimensions()V

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->updateHandleMenuPillPositions()V

    return-void
.end method

.method private createAppInfoPill(Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;)V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    sget v3, Lcom/android/wm/shell/R$layout;->desktop_mode_window_decor_handle_menu_app_info_pill:I

    iget v9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    iget v10, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    iget v11, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    iget v12, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    const-string v4, "Menu\'s app info pill"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    return-void
.end method

.method private createMoreActionsPill(Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;)V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    sget v3, Lcom/android/wm/shell/R$layout;->desktop_mode_window_decor_handle_menu_more_actions_pill:I

    iget v9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    iget v10, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillHeight:I

    iget v11, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    iget v12, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    const-string v4, "Menu\'s more actions pill"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    return-void
.end method

.method private createWindowingPill(Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;)V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    sget v3, Lcom/android/wm/shell/R$layout;->desktop_mode_window_decor_handle_menu_windowing_pill:I

    iget v9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    iget v10, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    iget v11, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    iget v12, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    const-string v4, "Menu\'s windowing pill"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    return-void
.end method

.method private loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private loadHandleMenuDimensions()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_width:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_margin_top:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_margin_start:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_pill_spacing_margin:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_app_info_pill_height:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_windowing_pill_height:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_more_actions_pill_height:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillHeight:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_shadow_radius:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    sget v1, Lcom/android/wm/shell/R$dimen;->desktop_mode_handle_menu_corner_radius:I

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    return-void
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .registers 4

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, p3

    if-ltz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method private setupHandleMenu()V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$id;->collapse_menu_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget v2, Lcom/android/wm/shell/R$id;->application_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/android/wm/shell/R$id;->application_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$id;->fullscreen_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget v2, Lcom/android/wm/shell/R$id;->split_screen_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    sget v3, Lcom/android/wm/shell/R$id;->floating_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    sget v4, Lcom/android/wm/shell/R$id;->desktop_button:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/wm/shell/R$color;->desktop_mode_caption_menu_buttons_color_active:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/wm/shell/R$color;->desktop_mode_caption_menu_buttons_color_inactive:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_97

    move-object v6, v4

    goto :goto_98

    :cond_97
    move-object v6, v5

    :goto_98
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_a6

    move-object v1, v4

    goto :goto_a7

    :cond_a6
    move-object v1, v5

    :goto_a7
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b5

    move-object v1, v4

    goto :goto_b6

    :cond_b5
    move-object v1, v5

    :goto_b6
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c3

    goto :goto_c4

    :cond_c3
    move-object v4, v5

    :goto_c4
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_c7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$id;->close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/android/wm/shell/R$id;->select_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateHandleMenuPillPositions()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    sget v2, Lcom/android/wm/shell/R$layout;->desktop_mode_app_controls_window_decor:I

    if-ne v1, v2, :cond_20

    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionX:I

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionY:I

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    goto :goto_2e

    :cond_20
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionX:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionY:I

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    :goto_2e
    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    int-to-float v0, v0

    int-to-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    if-eqz v2, :cond_53

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    int-to-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_5f

    :cond_53
    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_5f
    return-void
.end method

.method private viewsLaidOut()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkClickEvent(Landroid/view/MotionEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$id;->collapse_menu_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v3

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_36
    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    :cond_11
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    return-void
.end method

.method public isValidMenuInput(Landroid/graphics/PointF;)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->viewsLaidOut()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v3

    invoke-direct {p0, v0, v2, v4}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    const/4 v3, 0x0

    if-eqz v2, :cond_3c

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v2

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v5

    invoke-direct {p0, v2, v4, v6}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    move-result v2

    goto :goto_3d

    :cond_3c
    move v2, v3

    :goto_3d
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v6

    invoke-direct {p0, v4, v5, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    move-result p0

    if-nez v0, :cond_5d

    if-nez v2, :cond_5d

    if-eqz p0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v1, v3

    :cond_5d
    :goto_5d
    return v1
.end method

.method public relayout(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->updateHandleMenuPillPositions()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_27
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_34
    return-void
.end method

.method public show()V
    .registers 4

    new-instance v0, Landroid/window/SurfaceSyncGroup;

    const-string v1, "HandleMenu"

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->createAppInfoPill(Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;)V

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    if-eqz v2, :cond_16

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->createWindowingPill(Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;)V

    :cond_16
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->createMoreActionsPill(Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->setupHandleMenu()V

    return-void
.end method
