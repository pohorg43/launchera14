.class public final synthetic Lq7/v$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq7/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lp7/e<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lq7/v$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq7/v$a;

    invoke-direct {v0}, Lq7/v$a;-><init>()V

    sput-object v0, Lq7/v$a;->a:Lq7/v$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lp7/e;

    const/4 v1, 0x3

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lp7/e;

    check-cast p3, Ll4/d;

    invoke-interface {p1, p2, p3}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
