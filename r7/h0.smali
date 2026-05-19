.class public final Lr7/h0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Ll4/f$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lm7/l2<",
            "*>;",
            "Ll4/f$a;",
            "Lm7/l2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lr7/m0;",
            "Ll4/f$a;",
            "Lr7/m0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr7/h0;->a:Lr7/f0;

    sget-object v0, Lr7/h0$a;->a:Lr7/h0$a;

    sput-object v0, Lr7/h0;->b:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lr7/h0$b;->a:Lr7/h0$b;

    sput-object v0, Lr7/h0;->c:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lr7/h0$c;->a:Lr7/h0$c;

    sput-object v0, Lr7/h0;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final a(Ll4/f;Ljava/lang/Object;)V
    .registers 6

    sget-object v0, Lr7/h0;->a:Lr7/f0;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    instance-of v0, p1, Lr7/m0;

    if-eqz v0, :cond_27

    check-cast p1, Lr7/m0;

    iget-object v0, p1, Lr7/m0;->c:[Lm7/l2;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_38

    :goto_12
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p1, Lr7/m0;->c:[Lm7/l2;

    aget-object v2, v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p1, Lr7/m0;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p0, v0}, Lm7/l2;->u(Ll4/f;Ljava/lang/Object;)V

    if-gez v1, :cond_25

    goto :goto_38

    :cond_25
    move v0, v1

    goto :goto_12

    :cond_27
    const/4 v0, 0x0

    sget-object v1, Lr7/h0;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lm7/l2;

    invoke-interface {v0, p0, p1}, Lm7/l2;->u(Ll4/f;Ljava/lang/Object;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public static final b(Ll4/f;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lr7/h0;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_6

    invoke-static {p0}, Lr7/h0;->b(Ll4/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_10

    sget-object p0, Lr7/h0;->a:Lr7/f0;

    goto :goto_31

    :cond_10
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_26

    new-instance v0, Lr7/m0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lr7/m0;-><init>(Ll4/f;I)V

    sget-object p1, Lr7/h0;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_31

    :cond_26
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lm7/l2;

    invoke-interface {p1, p0}, Lm7/l2;->t(Ll4/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_31
    return-object p0
.end method
