.class public final Lj6/d$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj6/d;-><init>(Lj6/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lj6/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj6/d;


# direct methods
.method public constructor <init>(Lj6/d;)V
    .registers 2

    iput-object p1, p0, Lj6/d$c;->a:Lj6/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 16

    iget-object p0, p0, Lj6/d$c;->a:Lj6/d;

    sget-object v0, Lj6/e;->a:Lj6/e;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "changeOptions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.renderer.DescriptorRendererImpl"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Lj6/j;

    new-instance v3, Lj6/j;

    invoke-direct {v3}, Lj6/j;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v5, "this::class.java.declaredFields"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_29
    const/4 v8, 0x1

    if-ge v6, v5, :cond_b5

    aget-object v9, v4, v6

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_b0

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Lv4/a;

    if-eqz v10, :cond_44

    check-cast v8, Lv4/a;

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    if-nez v8, :cond_48

    goto :goto_b0

    :cond_48
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "field.name"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x2

    const-string v13, "is"

    invoke-static {v10, v13, v7, v12}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "get"

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_74

    const/4 v11, 0x1

    goto :goto_75

    :cond_74
    move v11, v7

    :goto_75
    if-eqz v11, :cond_98

    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    const/4 v11, 0x1

    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "this as java.lang.String).substring(startIndex)"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_98
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-direct {v11, v10, v12, v7}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p0, v11}, Lv4/a;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lj6/k;

    invoke-direct {v8, v7, v3}, Lj6/k;-><init>(Ljava/lang/Object;Lj6/j;)V

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    :goto_b0
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_29

    :cond_b5
    invoke-virtual {v0, v3}, Lj6/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    iput-boolean p0, v3, Lj6/j;->a:Z

    new-instance p0, Lj6/d;

    invoke-direct {p0, v3}, Lj6/d;-><init>(Lj6/j;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
