.class public final Lo5/i;
.super Lo5/f;
.source ""

# interfaces
.implements Ly5/e;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaAnnotationArguments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaAnnotationArguments.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaArrayAnnotationArgument\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,79:1\n11335#2:80\n11670#2,3:81\n*S KotlinDebug\n*F\n+ 1 ReflectJavaAnnotationArguments.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaArrayAnnotationArgument\n*L\n48#1:80\n48#1:81,3\n*E\n"
    }
.end annotation


# instance fields
.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh6/f;[Ljava/lang/Object;)V
    .registers 4

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo5/f;-><init>(Lh6/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lo5/i;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo5/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/i;->b:[Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_61

    aget-object v3, p0, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const-string v5, "value"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lo5/d;->a:Ljava/util/List;

    const-string v6, "<this>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_32

    new-instance v5, Lo5/x;

    check-cast v3, Ljava/lang/Enum;

    invoke-direct {v5, v4, v3}, Lo5/x;-><init>(Lh6/f;Ljava/lang/Enum;)V

    goto :goto_5b

    :cond_32
    instance-of v5, v3, Ljava/lang/annotation/Annotation;

    if-eqz v5, :cond_3e

    new-instance v5, Lo5/g;

    check-cast v3, Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v4, v3}, Lo5/g;-><init>(Lh6/f;Ljava/lang/annotation/Annotation;)V

    goto :goto_5b

    :cond_3e
    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_4a

    new-instance v5, Lo5/i;

    check-cast v3, [Ljava/lang/Object;

    invoke-direct {v5, v4, v3}, Lo5/i;-><init>(Lh6/f;[Ljava/lang/Object;)V

    goto :goto_5b

    :cond_4a
    instance-of v5, v3, Ljava/lang/Class;

    if-eqz v5, :cond_56

    new-instance v5, Lo5/t;

    check-cast v3, Ljava/lang/Class;

    invoke-direct {v5, v4, v3}, Lo5/t;-><init>(Lh6/f;Ljava/lang/Class;)V

    goto :goto_5b

    :cond_56
    new-instance v5, Lo5/z;

    invoke-direct {v5, v4, v3}, Lo5/z;-><init>(Lh6/f;Ljava/lang/Object;)V

    :goto_5b
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_61
    return-object v0
.end method
