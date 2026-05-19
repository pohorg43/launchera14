.class public final synthetic Lcom/android/quickstep/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/app/ActivityOptions;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Landroid/content/Intent;Landroid/app/ActivityOptions;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/s0;->a:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p2, p0, Lcom/android/quickstep/s0;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/quickstep/s0;->c:Landroid/app/ActivityOptions;

    iput-wide p4, p0, Lcom/android/quickstep/s0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/s0;->a:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object v1, p0, Lcom/android/quickstep/s0;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/s0;->c:Landroid/app/ActivityOptions;

    iget-wide v3, p0, Lcom/android/quickstep/s0;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->a(Lcom/android/quickstep/RecentsAnimationCallbacks;Landroid/content/Intent;Landroid/app/ActivityOptions;J)V

    return-void
.end method
