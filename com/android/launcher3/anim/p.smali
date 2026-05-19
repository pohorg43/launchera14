.class public final synthetic Lcom/android/launcher3/anim/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/anim/p;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/p;

    invoke-direct {v0}, Lcom/android/launcher3/anim/p;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/p;->a:Lcom/android/launcher3/anim/p;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;->b()V

    return-void
.end method
