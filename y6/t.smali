.class public final Ly6/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/f1;


# static fields
.field public static final a:Ly6/t;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly6/t;

    invoke-direct {v0}, Ly6/t;-><init>()V

    sput-object v0, Ly6/t;->a:Ly6/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj5/h;Ly6/j1;Li5/l;)Ly6/g1;
    .registers 4

    const-string p0, "annotations"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lj5/h;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly6/g1;->c:Ly6/g1;

    goto :goto_22

    :cond_13
    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    new-instance p2, Ly6/o;

    invoke-direct {p2, p1}, Ly6/o;-><init>(Lj5/h;)V

    invoke-static {p2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object p0

    :goto_22
    return-object p0
.end method
