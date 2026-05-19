.class public final synthetic Lcom/android/launcher3/search/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/a;->a:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/search/a;->a:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->b(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method
