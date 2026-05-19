.class public final synthetic Lu7/b;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lu7/c;",
        "Lu7/h<",
        "*>;",
        "Ljava/lang/Object;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lu7/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu7/b;

    invoke-direct {v0}, Lu7/b;-><init>()V

    sput-object v0, Lu7/b;->a:Lu7/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lu7/c;

    const/4 v1, 0x3

    const-string v3, "register"

    const-string v4, "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    check-cast p1, Lu7/c;

    check-cast p2, Lu7/h;

    iget-wide v0, p1, Lu7/c;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_12

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-interface {p2, p0}, Lu7/h;->c(Ljava/lang/Object;)V

    goto :goto_30

    :cond_12
    new-instance p0, Lu7/a;

    invoke-direct {p0, p2, p1}, Lu7/a;-><init>(Lu7/h;Lu7/c;)V

    const-string p3, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p2

    check-cast p3, Lu7/g;

    invoke-interface {p2}, Lu7/h;->getContext()Ll4/f;

    move-result-object p3

    invoke-static {p3}, Lm7/s0;->b(Ll4/f;)Lm7/r0;

    move-result-object v0

    iget-wide v1, p1, Lu7/c;->a:J

    invoke-interface {v0, v1, v2, p0, p3}, Lm7/r0;->l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;

    move-result-object p0

    invoke-interface {p2, p0}, Lu7/h;->d(Lm7/a1;)V

    :goto_30
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
