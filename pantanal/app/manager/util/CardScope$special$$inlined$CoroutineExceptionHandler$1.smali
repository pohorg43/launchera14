.class public final Lpantanal/app/manager/util/CardScope$special$$inlined$CoroutineExceptionHandler$1;
.super Ll4/a;
.source ""

# interfaces
.implements Lm7/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/util/CardScope;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CardScope.kt\npantanal/app/manager/util/CardScope\n*L\n1#1,110:1\n29#2,2:111\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lm7/g0$a;)V
    .registers 2

    invoke-direct {p0, p1}, Ll4/a;-><init>(Ll4/f$b;)V

    return-void
.end method


# virtual methods
.method public handleException(Ll4/f;Ljava/lang/Throwable;)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "catch exception: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "CardScope"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
