.class public final synthetic Lcom/android/launcher/guide/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/b;->a:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher/guide/b;->a:Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/guide/DrawerGuideManager;->a(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method
