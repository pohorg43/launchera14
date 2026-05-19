.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-static {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getMContext$p$s-844281837(Lcom/android/quickstep/views/OplusTaskViewImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusTaskView"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_39

    :cond_38
    const/4 p2, 0x0

    :goto_39
    const/16 v0, 0x9

    const/4 v2, 0x1

    if-nez p2, :cond_3f

    goto :goto_6f

    :cond_3f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_6f

    if-nez p1, :cond_48

    goto :goto_6e

    :cond_48
    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p2

    if-eqz p2, :cond_5e

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getMContext$p$s-844281837(Lcom/android/quickstep/views/OplusTaskViewImpl;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f080922

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_6b

    :cond_5e
    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getMContext$p$s-844281837(Lcom/android/quickstep/views/OplusTaskViewImpl;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f080923

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_6b
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_6e
    return v2

    :cond_6f
    :goto_6f
    const/16 v0, 0xa

    if-nez p2, :cond_74

    goto :goto_8e

    :cond_74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_8e

    if-nez p1, :cond_7d

    goto :goto_8d

    :cond_7d
    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$onFinishInflate$2;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getMContext$p$s-844281837(Lcom/android/quickstep/views/OplusTaskViewImpl;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f0808e1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_8d
    return v2

    :cond_8e
    :goto_8e
    return v1
.end method
