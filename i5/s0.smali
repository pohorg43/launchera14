.class public final Li5/s0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li5/s0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lr6/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Li5/s0$a;

.field public static final synthetic f:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li5/e;

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lz6/f;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lz6/f;

.field public final d:Lx6/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Li5/s0;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Li5/s0;->f:[Lz4/n;

    new-instance v0, Li5/s0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li5/s0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Li5/s0;->e:Li5/s0$a;

    return-void
.end method

.method public constructor <init>(Li5/e;Lx6/m;Lkotlin/jvm/functions/Function1;Lz6/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/s0;->a:Li5/e;

    iput-object p3, p0, Li5/s0;->b:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Li5/s0;->c:Lz6/f;

    new-instance p1, Li5/t0;

    invoke-direct {p1, p0}, Li5/t0;-><init>(Li5/s0;)V

    invoke-interface {p2, p1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Li5/s0;->d:Lx6/i;

    return-void
.end method


# virtual methods
.method public final a(Lz6/f;)Lr6/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/f;",
            ")TT;"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li5/s0;->a:Li5/e;

    invoke-static {v0}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz6/f;->d(Li5/e0;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object p0, p0, Li5/s0;->d:Lx6/i;

    sget-object p1, Li5/s0;->f:[Lz4/n;

    aget-object p1, p1, v1

    invoke-static {p0, p1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    return-object p0

    :cond_1f
    iget-object v0, p0, Li5/s0;->a:Li5/e;

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    const-string v2, "classDescriptor.typeConstructor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lz6/f;->e(Ly6/j1;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object p0, p0, Li5/s0;->d:Lx6/i;

    sget-object p1, Li5/s0;->f:[Lz4/n;

    aget-object p1, p1, v1

    invoke-static {p0, p1}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    return-object p0

    :cond_3d
    iget-object v0, p0, Li5/s0;->a:Li5/e;

    new-instance v1, Li5/s0$b;

    invoke-direct {v1, p0, p1}, Li5/s0$b;-><init>(Li5/s0;Lz6/f;)V

    invoke-virtual {p1, v0, v1}, Lz6/f;->c(Li5/e;Lkotlin/jvm/functions/Function0;)Lr6/i;

    move-result-object p0

    return-object p0
.end method
