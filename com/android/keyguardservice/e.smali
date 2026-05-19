.class public final synthetic Lcom/android/keyguardservice/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/keyguardservice/e;->a:J

    iput-wide p3, p0, Lcom/android/keyguardservice/e;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-wide v0, p0, Lcom/android/keyguardservice/e;->a:J

    iget-wide v2, p0, Lcom/android/keyguardservice/e;->b:J

    check-cast p1, Landroid/animation/Animator;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->d(JJLandroid/animation/Animator;)V

    return-void
.end method
