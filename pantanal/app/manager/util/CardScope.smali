.class public final Lpantanal/app/manager/util/CardScope;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/j0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardScope.kt\npantanal/app/manager/util/CardScope\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,33:1\n48#2,4:34\n*S KotlinDebug\n*F\n+ 1 CardScope.kt\npantanal/app/manager/util/CardScope\n*L\n28#1:34,4\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/app/manager/util/CardScope;

.field private static final TAG:Ljava/lang/String; = "CardScope"

.field private static final coroutineContext:Ll4/f;

.field private static final handler:Lm7/g0;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/manager/util/CardScope;

    invoke-direct {v0}, Lpantanal/app/manager/util/CardScope;-><init>()V

    sput-object v0, Lpantanal/app/manager/util/CardScope;->INSTANCE:Lpantanal/app/manager/util/CardScope;

    sget v0, Lm7/g0;->K:I

    sget-object v0, Lm7/g0$a;->a:Lm7/g0$a;

    new-instance v1, Lpantanal/app/manager/util/CardScope$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0}, Lpantanal/app/manager/util/CardScope$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lm7/g0$a;)V

    sput-object v1, Lpantanal/app/manager/util/CardScope;->handler:Lm7/g0;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lv1/j;->a(Lm7/s1;I)Lm7/v;

    move-result-object v0

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    check-cast v0, Lm7/x1;

    invoke-static {v0, v2}, Ll4/f$a$a;->d(Ll4/f$a;Ll4/f;)Ll4/f;

    move-result-object v0

    invoke-interface {v0, v1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/manager/util/CardScope;->coroutineContext:Ll4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ll4/f;
    .registers 1

    sget-object p0, Lpantanal/app/manager/util/CardScope;->coroutineContext:Ll4/f;

    return-object p0
.end method
