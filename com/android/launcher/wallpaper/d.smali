.class public final synthetic Lcom/android/launcher/wallpaper/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field public final synthetic d:Lcom/android/launcher/Launcher;

.field public final synthetic e:Lcom/android/launcher3/OplusHotseat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/d;->a:Lcom/android/launcher3/OplusWorkspace;

    iput-boolean p2, p0, Lcom/android/launcher/wallpaper/d;->b:Z

    iput-object p3, p0, Lcom/android/launcher/wallpaper/d;->c:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p4, p0, Lcom/android/launcher/wallpaper/d;->d:Lcom/android/launcher/Launcher;

    iput-object p5, p0, Lcom/android/launcher/wallpaper/d;->e:Lcom/android/launcher3/OplusHotseat;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/wallpaper/d;->a:Lcom/android/launcher3/OplusWorkspace;

    iget-boolean v1, p0, Lcom/android/launcher/wallpaper/d;->b:Z

    iget-object v2, p0, Lcom/android/launcher/wallpaper/d;->c:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/d;->d:Lcom/android/launcher/Launcher;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/d;->e:Lcom/android/launcher3/OplusHotseat;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/wallpaper/WallpaperUtil;->a(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V

    return-void
.end method
