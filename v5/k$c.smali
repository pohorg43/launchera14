.class public final Lv5/k$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/k;-><init>(Lu5/g;Ly5/u;Lv5/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lv5/k$a;",
        "Li5/e;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaPackageScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaPackageScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaPackageScope$classes$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,189:1\n1#2:190\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/k;

.field public final synthetic b:Lu5/g;


# direct methods
.method public constructor <init>(Lv5/k;Lu5/g;)V
    .registers 3

    iput-object p1, p0, Lv5/k$c;->a:Lv5/k;

    iput-object p2, p0, Lv5/k$c;->b:Lu5/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p1, Lv5/k$a;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh6/b;

    iget-object v1, p0, Lv5/k$c;->a:Lv5/k;

    iget-object v1, v1, Lv5/k;->o:Lv5/j;

    iget-object v1, v1, Ll5/c0;->e:Lh6/c;

    iget-object v2, p1, Lv5/k$a;->a:Lh6/f;

    invoke-direct {v0, v1, v2}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    iget-object v1, p1, Lv5/k$a;->b:Ly5/g;

    if-eqz v1, :cond_29

    iget-object v2, p0, Lv5/k$c;->b:Lu5/g;

    iget-object v2, v2, Lu5/g;->a:Lu5/c;

    iget-object v2, v2, Lu5/c;->c:La6/r;

    iget-object v3, p0, Lv5/k$c;->a:Lv5/k;

    invoke-static {v3}, Lv5/k;->v(Lv5/k;)Lg6/e;

    move-result-object v3

    invoke-interface {v2, v1, v3}, La6/r;->a(Ly5/g;Lg6/e;)La6/r$a;

    move-result-object v1

    goto :goto_39

    :cond_29
    iget-object v1, p0, Lv5/k$c;->b:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->c:La6/r;

    iget-object v2, p0, Lv5/k$c;->a:Lv5/k;

    invoke-static {v2}, Lv5/k;->v(Lv5/k;)Lg6/e;

    move-result-object v2

    invoke-interface {v1, v0, v2}, La6/r;->c(Lh6/b;Lg6/e;)La6/r$a;

    move-result-object v1

    :goto_39
    const/4 v2, 0x0

    if-eqz v1, :cond_41

    invoke-virtual {v1}, La6/r$a;->a()La6/t;

    move-result-object v3

    goto :goto_42

    :cond_41
    move-object v3, v2

    :goto_42
    if-eqz v3, :cond_49

    invoke-interface {v3}, La6/t;->c()Lh6/b;

    move-result-object v4

    goto :goto_4a

    :cond_49
    move-object v4, v2

    :goto_4a
    if-eqz v4, :cond_58

    invoke-virtual {v4}, Lh6/b;->k()Z

    move-result v5

    if-nez v5, :cond_187

    iget-boolean v4, v4, Lh6/b;->c:Z

    if-eqz v4, :cond_58

    goto/16 :goto_187

    :cond_58
    iget-object v4, p0, Lv5/k$c;->a:Lv5/k;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_62

    sget-object v3, Lv5/k$b$b;->a:Lv5/k$b$b;

    goto :goto_af

    :cond_62
    invoke-interface {v3}, La6/t;->e()Lb6/a;

    move-result-object v5

    iget-object v5, v5, Lb6/a;->a:Lb6/a$a;

    sget-object v6, Lb6/a$a;->d:Lb6/a$a;

    if-ne v5, v6, :cond_ad

    iget-object v4, v4, Lv5/l;->b:Lu5/g;

    iget-object v4, v4, Lu5/g;->a:Lu5/c;

    iget-object v4, v4, Lu5/c;->d:La6/j;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlinClass"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, La6/j;->h(La6/t;)Lu6/g;

    move-result-object v5

    if-nez v5, :cond_82

    move-object v3, v2

    goto :goto_a1

    :cond_82
    invoke-virtual {v4}, La6/j;->c()Lu6/k;

    move-result-object v4

    iget-object v4, v4, Lu6/k;->u:Lu6/i;

    invoke-interface {v3}, La6/t;->c()Lh6/b;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "classId"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Lu6/i;->b:Lkotlin/jvm/functions/Function1;

    new-instance v6, Lu6/i$a;

    invoke-direct {v6, v3, v5}, Lu6/i$a;-><init>(Lh6/b;Lu6/g;)V

    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/e;

    :goto_a1
    if-eqz v3, :cond_aa

    new-instance v4, Lv5/k$b$a;

    invoke-direct {v4, v3}, Lv5/k$b$a;-><init>(Li5/e;)V

    move-object v3, v4

    goto :goto_af

    :cond_aa
    sget-object v3, Lv5/k$b$b;->a:Lv5/k$b$b;

    goto :goto_af

    :cond_ad
    sget-object v3, Lv5/k$b$c;->a:Lv5/k$b$c;

    :goto_af
    instance-of v4, v3, Lv5/k$b$a;

    if-eqz v4, :cond_b9

    check-cast v3, Lv5/k$b$a;

    iget-object v2, v3, Lv5/k$b$a;->a:Li5/e;

    goto/16 :goto_187

    :cond_b9
    instance-of v4, v3, Lv5/k$b$c;

    if-eqz v4, :cond_bf

    goto/16 :goto_187

    :cond_bf
    instance-of v3, v3, Lv5/k$b$b;

    if-eqz v3, :cond_188

    iget-object p1, p1, Lv5/k$a;->b:Ly5/g;

    if-nez p1, :cond_dd

    iget-object p1, p0, Lv5/k$c;->b:Lu5/g;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->b:Lr5/s;

    new-instance v3, Lr5/s$a;

    instance-of v4, v1, La6/r$a$a;

    if-eqz v4, :cond_d5

    check-cast v1, La6/r$a$a;

    :cond_d5
    const/4 v1, 0x4

    invoke-direct {v3, v0, v2, v2, v1}, Lr5/s$a;-><init>(Lh6/b;[BLy5/g;I)V

    invoke-interface {p1, v3}, Lr5/s;->c(Lr5/s$a;)Ly5/g;

    move-result-object p1

    :cond_dd
    if-eqz p1, :cond_e4

    invoke-interface {p1}, Ly5/g;->h()I

    move-result v1

    goto :goto_e5

    :cond_e4
    const/4 v1, 0x0

    :goto_e5
    const/4 v3, 0x2

    if-ne v1, v3, :cond_151

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find kotlin binary class for light class created by kotlin binary file\nJavaClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nClassId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nfindKotlinClass(JavaClass) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv5/k$c;->b:Lu5/g;

    iget-object v4, v4, Lu5/g;->a:Lu5/c;

    iget-object v4, v4, Lu5/c;->c:La6/r;

    iget-object v5, p0, Lv5/k$c;->a:Lv5/k;

    invoke-static {v5}, Lv5/k;->v(Lv5/k;)Lg6/e;

    move-result-object v5

    const-string v6, "<this>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "javaClass"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "jvmMetadataVersion"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, p1, v5}, La6/r;->a(Ly5/g;Lg6/e;)La6/r$a;

    move-result-object p1

    if-eqz p1, :cond_129

    invoke-virtual {p1}, La6/r$a;->a()La6/t;

    move-result-object v2

    :cond_129
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nfindKotlinClass(ClassId) = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lv5/k$c;->b:Lu5/g;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->c:La6/r;

    iget-object p0, p0, Lv5/k$c;->a:Lv5/k;

    invoke-static {p0}, Lv5/k;->v(Lv5/k;)Lg6/e;

    move-result-object p0

    invoke-static {p1, v0, p0}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_151
    if-eqz p1, :cond_158

    invoke-interface {p1}, Ly5/g;->e()Lh6/c;

    move-result-object v0

    goto :goto_159

    :cond_158
    move-object v0, v2

    :goto_159
    if-eqz v0, :cond_187

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v1

    if-nez v1, :cond_187

    invoke-virtual {v0}, Lh6/c;->e()Lh6/c;

    move-result-object v0

    iget-object v1, p0, Lv5/k$c;->a:Lv5/k;

    iget-object v1, v1, Lv5/k;->o:Lv5/j;

    iget-object v1, v1, Ll5/c0;->e:Lh6/c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_172

    goto :goto_187

    :cond_172
    new-instance v0, Lv5/f;

    iget-object v1, p0, Lv5/k$c;->b:Lu5/g;

    iget-object v3, p0, Lv5/k$c;->a:Lv5/k;

    iget-object v3, v3, Lv5/k;->o:Lv5/j;

    invoke-direct {v0, v1, v3, p1, v2}, Lv5/f;-><init>(Lu5/g;Li5/l;Ly5/g;Li5/e;)V

    iget-object p0, p0, Lv5/k$c;->b:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->s:Lr5/t;

    invoke-interface {p0, v0}, Lr5/t;->a(Lt5/c;)V

    move-object v2, v0

    :cond_187
    :goto_187
    return-object v2

    :cond_188
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
