.class public final synthetic Lo7/b$e;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/b;->v()Lu7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lo7/b<",
        "*>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo7/b$e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo7/b$e;

    invoke-direct {v0}, Lo7/b$e;-><init>()V

    sput-object v0, Lo7/b$e;->a:Lo7/b$e;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lo7/b;

    const/4 v1, 0x3

    const-string v3, "processResultSelectReceiveCatching"

    const-string v4, "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lo7/b;

    sget-object p0, Lo7/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lo7/e;->l:Lr7/f0;

    if-ne p3, p0, :cond_14

    invoke-virtual {p1}, Lo7/b;->o()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p3, Lo7/j$a;

    invoke-direct {p3, p0}, Lo7/j$a;-><init>(Ljava/lang/Throwable;)V

    :cond_14
    new-instance p0, Lo7/j;

    invoke-direct {p0, p3}, Lo7/j;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
