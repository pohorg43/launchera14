.class public abstract Lu6/p;
.super Lu6/o;
.source ""


# instance fields
.field public final h:Le6/a;

.field public final i:Lw6/i;

.field public final j:Le6/d;

.field public final k:Lu6/a0;

.field public l:Lc6/m;

.field public m:Lr6/i;


# direct methods
.method public constructor <init>(Lh6/c;Lx6/m;Li5/e0;Lc6/m;Le6/a;Lw6/i;)V
    .registers 7

    const-string p6, "fqName"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "storageManager"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "module"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "proto"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "metadataVersion"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lu6/o;-><init>(Lh6/c;Lx6/m;Li5/e0;)V

    iput-object p5, p0, Lu6/p;->h:Le6/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lu6/p;->i:Lw6/i;

    new-instance p1, Le6/d;

    iget-object p2, p4, Lc6/m;->d:Lc6/p;

    const-string p3, "proto.strings"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p4, Lc6/m;->e:Lc6/o;

    const-string p6, "proto.qualifiedNames"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Le6/d;-><init>(Lc6/p;Lc6/o;)V

    iput-object p1, p0, Lu6/p;->j:Le6/d;

    new-instance p2, Lu6/a0;

    new-instance p3, Lu6/p$a;

    invoke-direct {p3, p0}, Lu6/p$a;-><init>(Lu6/p;)V

    invoke-direct {p2, p4, p1, p5, p3}, Lu6/a0;-><init>(Lc6/m;Le6/c;Le6/a;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lu6/p;->k:Lu6/a0;

    iput-object p4, p0, Lu6/p;->l:Lc6/m;

    return-void
.end method


# virtual methods
.method public D0(Lu6/k;)V
    .registers 13

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/p;->l:Lc6/m;

    if-eqz v0, :cond_3a

    const/4 v1, 0x0

    iput-object v1, p0, Lu6/p;->l:Lc6/m;

    new-instance v1, Lw6/l;

    iget-object v4, v0, Lc6/m;->f:Lc6/l;

    const-string v0, "proto.`package`"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lu6/p;->j:Le6/d;

    iget-object v6, p0, Lu6/p;->h:Le6/a;

    iget-object v7, p0, Lu6/p;->i:Lw6/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scope of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lu6/p$b;

    invoke-direct {v10, p0}, Lu6/p$b;-><init>(Lu6/p;)V

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lw6/l;-><init>(Li5/h0;Lc6/l;Le6/c;Le6/a;Lw6/i;Lu6/k;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lu6/p;->m:Lr6/i;

    return-void

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l()Lr6/i;
    .registers 1

    iget-object p0, p0, Lu6/p;->m:Lr6/i;

    if-nez p0, :cond_a

    const-string p0, "_memberScope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    return-object p0
.end method

.method public z0()Lu6/h;
    .registers 1

    iget-object p0, p0, Lu6/p;->k:Lu6/a0;

    return-object p0
.end method
