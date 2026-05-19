.class public final Lpantanal/app/TimeOutLoadCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/OnLoadCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/TimeOutLoadCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/TimeOutLoadCallback$Companion;

.field private static final SECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "TimeOutLoadCallback"


# instance fields
.field private final cardLogMsg:Ljava/lang/String;

.field private final cb:Lpantanal/app/OnLoadCallback;

.field private final mainHandler$delegate:Lh4/f;

.field private final timeOut:I

.field private final timeOutAction:Ljava/lang/Runnable;

.field private final timeOutLimit:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/TimeOutLoadCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/TimeOutLoadCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/TimeOutLoadCallback;->Companion:Lpantanal/app/TimeOutLoadCallback$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILpantanal/app/OnLoadCallback;)V
    .registers 6

    const-string v0, "cardLogMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/TimeOutLoadCallback;->cardLogMsg:Ljava/lang/String;

    iput p2, p0, Lpantanal/app/TimeOutLoadCallback;->timeOut:I

    iput-object p3, p0, Lpantanal/app/TimeOutLoadCallback;->cb:Lpantanal/app/OnLoadCallback;

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lpantanal/app/TimeOutLoadCallback;->timeOutLimit:J

    sget-object p1, Lpantanal/app/TimeOutLoadCallback$mainHandler$2;->INSTANCE:Lpantanal/app/TimeOutLoadCallback$mainHandler$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/TimeOutLoadCallback;->mainHandler$delegate:Lh4/f;

    new-instance p1, Lpantanal/app/a;

    invoke-direct {p1, p0}, Lpantanal/app/a;-><init>(Lpantanal/app/TimeOutLoadCallback;)V

    iput-object p1, p0, Lpantanal/app/TimeOutLoadCallback;->timeOutAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lpantanal/app/TimeOutLoadCallback;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/TimeOutLoadCallback;->timeOutAction$lambda$0(Lpantanal/app/TimeOutLoadCallback;)V

    return-void
.end method

.method private final getMainHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lpantanal/app/TimeOutLoadCallback;->mainHandler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private static final timeOutAction$lambda$0(Lpantanal/app/TimeOutLoadCallback;)V
    .registers 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/TimeOutLoadCallback;->cardLogMsg:Ljava/lang/String;

    const-string v2, ", load card timeout action invoke!"

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "TimeOutLoadCallback"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget v0, p0, Lpantanal/app/TimeOutLoadCallback;->timeOut:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load time out, timeout set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {p0, v1, v0}, Lpantanal/app/TimeOutLoadCallback;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 16

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpantanal/app/TimeOutLoadCallback;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/TimeOutLoadCallback;->timeOutAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/TimeOutLoadCallback;->cardLogMsg:Ljava/lang/String;

    const-string v1, ", onError called, intercept"

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "TimeOutLoadCallback"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/TimeOutLoadCallback;->cb:Lpantanal/app/OnLoadCallback;

    invoke-interface {p0, p1, p2}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onPreview(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/TimeOutLoadCallback;->cb:Lpantanal/app/OnLoadCallback;

    invoke-interface {p0, p1}, Lpantanal/app/OnLoadCallback;->onPreview(Landroid/view/View;)V

    return-void
.end method

.method public onSuccess(Landroid/view/View;)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpantanal/app/TimeOutLoadCallback;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/TimeOutLoadCallback;->timeOutAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/TimeOutLoadCallback;->cardLogMsg:Ljava/lang/String;

    const-string v1, ", onSuccess called"

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "TimeOutLoadCallback"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/TimeOutLoadCallback;->cb:Lpantanal/app/OnLoadCallback;

    invoke-interface {p0, p1}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    return-void
.end method

.method public final startLoadCountDown()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/TimeOutLoadCallback;->cardLogMsg:Ljava/lang/String;

    iget v2, p0, Lpantanal/app/TimeOutLoadCallback;->timeOut:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",startLoadCountDown,timeout = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "TimeOutLoadCallback"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget v0, p0, Lpantanal/app/TimeOutLoadCallback;->timeOut:I

    if-ltz v0, :cond_45

    invoke-direct {p0}, Lpantanal/app/TimeOutLoadCallback;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/TimeOutLoadCallback;->timeOutAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lpantanal/app/TimeOutLoadCallback;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/TimeOutLoadCallback;->timeOutAction:Ljava/lang/Runnable;

    iget-wide v2, p0, Lpantanal/app/TimeOutLoadCallback;->timeOutLimit:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_45
    return-void
.end method
