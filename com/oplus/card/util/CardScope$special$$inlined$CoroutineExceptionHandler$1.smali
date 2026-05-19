.class public final Lcom/oplus/card/util/CardScope$special$$inlined$CoroutineExceptionHandler$1;
.super Ll4/a;
.source ""

# interfaces
.implements Lm7/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/util/CardScope;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CardScope.kt\ncom/oplus/card/util/CardScope\n*L\n1#1,110:1\n29#2,2:111\n*E\n"
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
    .registers 3

    const-string p0, "catch exception: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "CardScope"

    invoke-static {p2, p0, p1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
