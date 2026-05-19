.class Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Ljava/lang/Runnable;

.field public final synthetic val$callbackHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;->val$callback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;->val$callbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(J)V
    .registers 3

    const-string/jumbo p1, "makeCustomAnimation-onAnimationFinished; "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityOptionsCompat"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;->val$callbackHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method
