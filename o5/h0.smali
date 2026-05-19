.class public final Lo5/h0;
.super Lo5/w;
.source ""

# interfaces
.implements Ly5/a0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaValueParameter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaValueParameter.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaValueParameter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lo5/f0;

.field public final b:[Ljava/lang/annotation/Annotation;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Lo5/f0;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectAnnotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/w;-><init>()V

    iput-object p1, p0, Lo5/h0;->a:Lo5/f0;

    iput-object p2, p0, Lo5/h0;->b:[Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lo5/h0;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lo5/h0;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    iget-boolean p0, p0, Lo5/h0;->d:Z

    return p0
.end method

.method public f(Lh6/c;)Ly5/a;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo5/h0;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {p0, p1}, Lo5/h;->a([Ljava/lang/annotation/Annotation;Lh6/c;)Lo5/e;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .registers 1

    iget-object p0, p0, Lo5/h0;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Lo5/h;->b([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 1

    iget-object p0, p0, Lo5/h0;->c:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lh6/f;->e(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getType()Ly5/x;
    .registers 1

    iget-object p0, p0, Lo5/h0;->a:Lo5/f0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo5/h0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo5/h0;->d:Z

    if-eqz v2, :cond_1a

    const-string v2, "vararg "

    goto :goto_1c

    :cond_1a
    const-string v2, ""

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo5/h0;->c:Ljava/lang/String;

    if-eqz v2, :cond_28

    invoke-static {v2}, Lh6/f;->e(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo5/h0;->a:Lo5/f0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
