.class public final synthetic Lcom/android/wm/shell/startingsurface/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic a:Landroid/content/res/TypedArray;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/TypedArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/j;->a:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/j;->a:Landroid/content/res/TypedArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->h(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
