.class public final Lu6/m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lu6/k;

.field public final b:Le6/c;

.field public final c:Li5/l;

.field public final d:Le6/g;

.field public final e:Le6/h;

.field public final f:Le6/a;

.field public final g:Lw6/i;

.field public final h:Lu6/f0;

.field public final i:Lu6/v;


# direct methods
.method public constructor <init>(Lu6/k;Le6/c;Li5/l;Le6/g;Le6/h;Le6/a;Lw6/i;Lu6/f0;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/k;",
            "Le6/c;",
            "Li5/l;",
            "Le6/g;",
            "Le6/h;",
            "Le6/a;",
            "Lw6/i;",
            "Lu6/f0;",
            "Ljava/util/List<",
            "Lc6/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameters"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/m;->a:Lu6/k;

    iput-object p2, p0, Lu6/m;->b:Le6/c;

    iput-object p3, p0, Lu6/m;->c:Li5/l;

    iput-object p4, p0, Lu6/m;->d:Le6/g;

    iput-object p5, p0, Lu6/m;->e:Le6/h;

    iput-object p6, p0, Lu6/m;->f:Le6/a;

    iput-object p7, p0, Lu6/m;->g:Lw6/i;

    new-instance v0, Lu6/f0;

    const-string p1, "Deserializer for \""

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p3}, Li5/l;->getName()Lh6/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    if-eqz p7, :cond_54

    invoke-interface {p7}, Lw6/i;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_56

    :cond_54
    const-string p1, "[container not found]"

    :cond_56
    move-object p6, p1

    move-object p1, v0

    move-object p2, p0

    move-object p3, p8

    move-object p4, p9

    invoke-direct/range {p1 .. p6}, Lu6/f0;-><init>(Lu6/m;Lu6/f0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lu6/m;->h:Lu6/f0;

    new-instance p1, Lu6/v;

    invoke-direct {p1, p0}, Lu6/v;-><init>(Lu6/m;)V

    iput-object p1, p0, Lu6/m;->i:Lu6/v;

    return-void
.end method

.method public static synthetic b(Lu6/m;Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;I)Lu6/m;
    .registers 15

    and-int/lit8 p3, p7, 0x4

    const/4 p4, 0x0

    if-eqz p3, :cond_9

    iget-object p3, p0, Lu6/m;->b:Le6/c;

    move-object v3, p3

    goto :goto_a

    :cond_9
    move-object v3, p4

    :goto_a
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_12

    iget-object p3, p0, Lu6/m;->d:Le6/g;

    move-object v4, p3

    goto :goto_13

    :cond_12
    move-object v4, p4

    :goto_13
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lu6/m;->e:Le6/h;

    move-object v5, p3

    goto :goto_1c

    :cond_1b
    move-object v5, p4

    :goto_1c
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_22

    iget-object p4, p0, Lu6/m;->f:Le6/a;

    :cond_22
    move-object v6, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lu6/m;->a(Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;)Lu6/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;)Lu6/m;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/l;",
            "Ljava/util/List<",
            "Lc6/s;",
            ">;",
            "Le6/c;",
            "Le6/g;",
            "Le6/h;",
            "Le6/a;",
            ")",
            "Lu6/m;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v6, p6

    const-string v1, "descriptor"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeParameterProtos"

    move-object v9, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lu6/m;

    iget-object v1, v0, Lu6/m;->a:Lu6/k;

    const-string v7, "version"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v6, Le6/a;->b:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3f

    iget v11, v6, Le6/a;->c:I

    const/4 v12, 0x4

    if-ge v11, v12, :cond_43

    :cond_3f
    if-le v7, v8, :cond_42

    goto :goto_43

    :cond_42
    const/4 v8, 0x0

    :cond_43
    :goto_43
    if-eqz v8, :cond_46

    goto :goto_48

    :cond_46
    iget-object v5, v0, Lu6/m;->e:Le6/h;

    :goto_48
    iget-object v7, v0, Lu6/m;->g:Lw6/i;

    iget-object v8, v0, Lu6/m;->h:Lu6/f0;

    move-object v0, v10

    move-object/from16 v2, p3

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lu6/m;-><init>(Lu6/k;Le6/c;Li5/l;Le6/g;Le6/h;Le6/a;Lw6/i;Lu6/f0;Ljava/util/List;)V

    return-object v10
.end method
