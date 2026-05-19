.class public final Ls5/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaAnnotationMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaAnnotationMapper.kt\norg/jetbrains/kotlin/load/java/components/JavaAnnotationTargetMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n800#2,11:183\n1360#2:194\n1446#2,5:195\n1549#2:200\n1620#2,3:201\n*S KotlinDebug\n*F\n+ 1 JavaAnnotationMapper.kt\norg/jetbrains/kotlin/load/java/components/JavaAnnotationTargetMapper\n*L\n153#1:183,11\n154#1:194\n154#1:195,5\n155#1:200\n155#1:201,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ls5/d;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lj5/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj5/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Ls5/d;

    invoke-direct {v0}, Ls5/d;-><init>()V

    sput-object v0, Ls5/d;->a:Ls5/d;

    const/16 v0, 0xa

    new-array v0, v0, [Lh4/j;

    const-class v1, Lj5/n;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    new-instance v2, Lh4/j;

    const-string v3, "PACKAGE"

    invoke-direct {v2, v3, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    sget-object v2, Lj5/n;->p:Lj5/n;

    sget-object v3, Lj5/n;->C:Lj5/n;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "TYPE"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v0, v2

    sget-object v3, Lj5/n;->q:Lj5/n;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "ANNOTATION_TYPE"

    invoke-direct {v4, v5, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v4, v0, v3

    sget-object v4, Lj5/n;->r:Lj5/n;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    new-instance v5, Lh4/j;

    const-string v6, "TYPE_PARAMETER"

    invoke-direct {v5, v6, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v5, v0, v4

    const/4 v5, 0x4

    sget-object v6, Lj5/n;->t:Lj5/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "FIELD"

    invoke-direct {v7, v8, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x5

    sget-object v6, Lj5/n;->u:Lj5/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "LOCAL_VARIABLE"

    invoke-direct {v7, v8, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x6

    sget-object v6, Lj5/n;->v:Lj5/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "PARAMETER"

    invoke-direct {v7, v8, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x7

    sget-object v6, Lj5/n;->w:Lj5/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "CONSTRUCTOR"

    invoke-direct {v7, v8, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/16 v5, 0x8

    sget-object v6, Lj5/n;->x:Lj5/n;

    sget-object v7, Lj5/n;->y:Lj5/n;

    sget-object v8, Lj5/n;->z:Lj5/n;

    invoke-static {v6, v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "METHOD"

    invoke-direct {v7, v8, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/16 v5, 0x9

    sget-object v6, Lj5/n;->A:Lj5/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "TYPE_USE"

    invoke-direct {v7, v8, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls5/d;->b:Ljava/util/Map;

    new-array v0, v4, [Lh4/j;

    sget-object v4, Lj5/m;->a:Lj5/m;

    new-instance v5, Lh4/j;

    const-string v6, "RUNTIME"

    invoke-direct {v5, v6, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    sget-object v1, Lj5/m;->b:Lj5/m;

    new-instance v4, Lh4/j;

    const-string v5, "CLASS"

    invoke-direct {v4, v5, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    sget-object v1, Lj5/m;->c:Lj5/m;

    new-instance v2, Lh4/j;

    const-string v4, "SOURCE"

    invoke-direct {v2, v4, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls5/d;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lm6/g;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly5/b;",
            ">;)",
            "Lm6/g<",
            "*>;"
        }
    .end annotation

    const-string p0, "arguments"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ly5/m;

    if-eqz v1, :cond_e

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly5/m;

    invoke-interface {v0}, Ly5/m;->e()Lh6/f;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    sget-object v1, Ls5/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    if-eqz v0, :cond_4c

    goto :goto_4e

    :cond_4c
    sget-object v0, Li4/a0;->a:Li4/a0;

    :goto_4e
    invoke-static {p1, v0}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_29

    :cond_52
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/n;

    new-instance v1, Lm6/j;

    sget-object v2, Lf5/j$a;->v:Lh6/c;

    invoke-static {v2}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v2

    const-string v3, "topLevel(StandardNames.FqNames.annotationTarget)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v3, "identifier(kotlinTarget.name)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lm6/j;-><init>(Lh6/b;Lh6/f;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_8e
    new-instance p1, Lm6/b;

    sget-object v0, Ls5/d$a;->a:Ls5/d$a;

    invoke-direct {p1, p0, v0}, Lm6/b;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method
