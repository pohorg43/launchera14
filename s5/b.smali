.class public Ls5/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/c;
.implements Lt5/g;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaAnnotationMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaAnnotationMapper.kt\norg/jetbrains/kotlin/load/java/components/JavaAnnotationDescriptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
    }
.end annotation


# static fields
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
.field public final a:Lh6/c;

.field public final b:Li5/v0;

.field public final c:Lx6/i;

.field public final d:Ly5/b;

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Ls5/b;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls5/b;->f:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lu5/g;Ly5/a;Lh6/c;)V
    .registers 5

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ls5/b;->a:Lh6/c;

    if-eqz p2, :cond_1c

    iget-object p3, p1, Lu5/g;->a:Lu5/c;

    iget-object p3, p3, Lu5/c;->j:Lx5/b;

    invoke-interface {p3, p2}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object p3

    if-eqz p3, :cond_1c

    goto :goto_23

    :cond_1c
    sget-object p3, Li5/v0;->a:Li5/v0;

    const-string v0, "NO_SOURCE"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_23
    iput-object p3, p0, Ls5/b;->b:Li5/v0;

    iget-object p3, p1, Lu5/g;->a:Lu5/c;

    iget-object p3, p3, Lu5/c;->a:Lx6/m;

    new-instance v0, Ls5/b$a;

    invoke-direct {v0, p1, p0}, Ls5/b$a;-><init>(Lu5/g;Ls5/b;)V

    invoke-interface {p3, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Ls5/b;->c:Lx6/i;

    if-eqz p2, :cond_43

    invoke-interface {p2}, Ly5/a;->getArguments()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_43

    invoke-static {p1}, Li4/v;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly5/b;

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    iput-object p1, p0, Ls5/b;->d:Ly5/b;

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_51

    invoke-interface {p2}, Ly5/a;->d()Z

    move-result p2

    if-ne p2, p1, :cond_51

    goto :goto_52

    :cond_51
    move p1, p3

    :goto_52
    iput-boolean p1, p0, Ls5/b;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lh6/f;",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object p0, Li4/z;->a:Li4/z;

    return-object p0
.end method

.method public d()Z
    .registers 1

    iget-boolean p0, p0, Ls5/b;->e:Z

    return p0
.end method

.method public e()Lh6/c;
    .registers 1

    iget-object p0, p0, Ls5/b;->a:Lh6/c;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    iget-object p0, p0, Ls5/b;->b:Li5/v0;

    return-object p0
.end method

.method public getType()Ly6/l0;
    .registers 3

    iget-object p0, p0, Ls5/b;->c:Lx6/i;

    sget-object v0, Ls5/b;->f:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/s0;

    return-object p0
.end method
