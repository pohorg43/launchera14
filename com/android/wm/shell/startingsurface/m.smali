.class public final synthetic Lcom/android/wm/shell/startingsurface/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/AdaptiveIconDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/m;->a:Landroid/graphics/drawable/AdaptiveIconDrawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/m;->a:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->a(Landroid/graphics/drawable/AdaptiveIconDrawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    move-result-object p0

    return-object p0
.end method
