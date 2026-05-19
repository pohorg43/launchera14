.class public final Lf5/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nsuspendFunctionTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 suspendFunctionTypes.kt\norg/jetbrains/kotlin/builtins/SuspendFunctionTypesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n1#3:70\n*S KotlinDebug\n*F\n+ 1 suspendFunctionTypes.kt\norg/jetbrains/kotlin/builtins/SuspendFunctionTypesKt\n*L\n54#1:66\n54#1:67,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ll5/b0;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v8, Ll5/b0;

    new-instance v1, Ll5/o;

    sget-object v0, La7/j;->a:La7/j;

    sget-object v0, La7/j;->b:Li5/e0;

    sget-object v2, Lf5/j;->e:Lh6/c;

    invoke-direct {v1, v0, v2}, Ll5/o;-><init>(Li5/e0;Lh6/c;)V

    sget-object v2, Li5/f;->b:Li5/f;

    sget-object v0, Lf5/j;->f:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->g()Lh6/f;

    move-result-object v5

    sget-object v6, Li5/v0;->a:Li5/v0;

    sget-object v9, Lx6/e;->e:Lx6/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Ll5/b0;-><init>(Li5/l;Li5/f;ZZLh6/f;Li5/v0;Lx6/m;)V

    sget-object v0, Li5/d0;->d:Li5/d0;

    iput-object v0, v8, Ll5/b0;->j:Li5/d0;

    sget-object v0, Li5/s;->e:Li5/t;

    const/4 v7, 0x0

    if-eqz v0, :cond_9f

    iput-object v0, v8, Ll5/b0;->k:Li5/t;

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    const/4 v2, 0x0

    sget-object v3, Ly6/e2;->d:Ly6/e2;

    const-string v0, "T"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v8

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Ll5/n0;->I0(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILx6/m;)Li5/a1;

    move-result-object v0

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v1, v8, Ll5/b0;->m:Ljava/util/List;

    if-nez v1, :cond_82

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v8, Ll5/b0;->m:Ljava/util/List;

    new-instance v0, Ly6/q;

    iget-object v2, v8, Ll5/b0;->n:Ljava/util/Collection;

    iget-object v3, v8, Ll5/b0;->o:Lx6/m;

    invoke-direct {v0, v8, v1, v2, v3}, Ly6/q;-><init>(Li5/e;Ljava/util/List;Ljava/util/Collection;Lx6/m;)V

    iput-object v0, v8, Ll5/b0;->l:Ly6/j1;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/x;

    check-cast v1, Ll5/i;

    invoke-virtual {v8}, Ll5/b;->m()Ly6/s0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll5/r;->L0(Ly6/l0;)V

    goto :goto_63

    :cond_79
    sput-object v8, Lf5/k;->a:Ll5/b0;

    return-void

    :cond_7c
    const/16 v0, 0xd

    invoke-static {v0}, Ll5/b0;->x0(I)V

    throw v7

    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type parameters are already set for "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ll5/b;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    const/16 v0, 0xe

    invoke-static {v0}, Ll5/b0;->x0(I)V

    throw v7

    :cond_9f
    const/16 v0, 0x9

    invoke-static {v0}, Ll5/b0;->x0(I)V

    throw v7
.end method
