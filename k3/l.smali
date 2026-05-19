.class public final Lk3/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lk3/l;

.field public static final b:Lh4/f;

.field public static final c:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lk3/l$b;->a:Lk3/l$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lk3/l;->b:Lh4/f;

    sget-object v0, Lk3/l$a;->a:Lk3/l$a;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lk3/l;->c:Lh4/f;

    return-void
.end method

.method public static final a(Lm7/y0;)Lm7/j1;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lk3/l;->c:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    const-string v0, "governDefaultExecutor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm7/k1;

    invoke-direct {v0, p0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
