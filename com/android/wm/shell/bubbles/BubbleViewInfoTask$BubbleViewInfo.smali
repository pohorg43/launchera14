.class public Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BubbleViewInfo"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public badgeBitmap:Landroid/graphics/Bitmap;

.field public bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field public bubbleBitmap:Landroid/graphics/Bitmap;

.field public dotColor:I

.field public dotPath:Landroid/graphics/Path;

.field public expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

.field public imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field public rawBadgeBitmap:Landroid/graphics/Bitmap;

.field public shortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/launcher3/icons/BubbleIconFactory;Lcom/android/wm/shell/bubbles/Bubble;Z)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;-><init>()V

    const/4 v1, 0x0

    if-nez p5, :cond_30

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->isInflated()Z

    move-result p5

    if-nez p5, :cond_30

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    sget v2, Lcom/android/wm/shell/R$layout;->bubble_view:I

    invoke-virtual {p5, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BadgedImageView;->initialize(Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    sget v2, Lcom/android/wm/shell/R$layout;->bubble_expanded_view:I

    invoke-virtual {p5, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-object p5, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p5, p1, p2, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V

    :cond_30
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    :cond_3c
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_48
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const p5, 0xc2200

    invoke-virtual {p1, p2, p5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_5f

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    :cond_5f
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_6f} :catch_eb

    iget-object p5, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p3, p0, p5, v2}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBubbleDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-nez p5, :cond_7c

    goto :goto_7d

    :cond_7c
    move-object p2, p5

    :goto_7d
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->isImportantConversation()Z

    move-result p5

    invoke-virtual {p3, p1, p5}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p5

    iget-object v2, p5, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->isImportantConversation()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-virtual {p3, p1, v1}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_98

    :cond_96
    iget-object p1, p5, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_98
    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->rawBadgeBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    new-array p1, p1, [F

    check-cast p3, Lcom/android/wm/shell/bubbles/BubbleIconFactoryCustom;

    invoke-virtual {p3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleIconFactoryCustom;->getBubbleBitmapCustom(Landroid/graphics/drawable/Drawable;[F)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object p2, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/internal/R$string;->config_icon_mask:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p2

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    aget p1, p1, v1

    const/high16 v1, 0x42480000  # 50.0f

    invoke-virtual {p3, p1, p1, v1, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p2, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iput-object p2, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    iget p1, p5, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    const/4 p2, -0x1

    const p3, 0x3f0a3d71  # 0.54f

    invoke-static {p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    sget p1, Lcom/android/wm/shell/R$color;->bubble_dot:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getFlyoutMessage()Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    move-result-object p1

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    if-eqz p1, :cond_ea

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->loadSenderAvatar(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    :cond_ea
    return-object v0

    :catch_eb
    const-string p0, "Unable to find package: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static populateForBubbleBar(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/launcher3/icons/BubbleIconFactory;Lcom/android/wm/shell/bubbles/Bubble;Z)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .registers 9

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;-><init>()V

    const/4 v1, 0x0

    if-nez p5, :cond_1f

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->isInflated()Z

    move-result p5

    if-nez p5, :cond_1f

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    sget v2, Lcom/android/wm/shell/R$layout;->bubble_bar_expanded_view:I

    invoke-virtual {p5, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iput-object p2, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleController;)V

    :cond_1f
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    :cond_2b
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_37
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const p2, 0xc2200

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    :cond_4e
    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_5e} :catch_67

    invoke-virtual {p3, p0, v1}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->rawBadgeBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :catch_67
    const-string p0, "Unable to find package: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
