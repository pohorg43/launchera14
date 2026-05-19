.class public final Lr7/h0$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lr7/m0;",
        "Ll4/f$a;",
        "Lr7/m0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr7/h0$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr7/h0$c;

    invoke-direct {v0}, Lr7/h0$c;-><init>()V

    sput-object v0, Lr7/h0$c;->a:Lr7/h0$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lr7/m0;

    check-cast p2, Ll4/f$a;

    instance-of p0, p2, Lm7/l2;

    if-eqz p0, :cond_23

    check-cast p2, Lm7/l2;

    iget-object p0, p1, Lr7/m0;->a:Ll4/f;

    invoke-interface {p2, p0}, Lm7/l2;->t(Ll4/f;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Lr7/m0;->b:[Ljava/lang/Object;

    iget v1, p1, Lr7/m0;->d:I

    aput-object p0, v0, v1

    iget-object p0, p1, Lr7/m0;->c:[Lm7/l2;

    add-int/lit8 v0, v1, 0x1

    iput v0, p1, Lr7/m0;->d:I

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, p0, v1

    :cond_23
    return-object p1
.end method
