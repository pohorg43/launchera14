.class public final Li8/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lh8/g;

.field public final c:Li8/c;

.field public final d:Lh8/c;

.field public final e:I

.field public final f:Le8/x;

.field public final g:Le8/d;

.field public final h:Le8/n;

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lh8/g;Li8/c;Lh8/c;ILe8/x;Le8/d;Le8/n;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/s;",
            ">;",
            "Lh8/g;",
            "Li8/c;",
            "Lh8/c;",
            "I",
            "Le8/x;",
            "Le8/d;",
            "Le8/n;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/f;->a:Ljava/util/List;

    iput-object p4, p0, Li8/f;->d:Lh8/c;

    iput-object p2, p0, Li8/f;->b:Lh8/g;

    iput-object p3, p0, Li8/f;->c:Li8/c;

    iput p5, p0, Li8/f;->e:I

    iput-object p6, p0, Li8/f;->f:Le8/x;

    iput-object p7, p0, Li8/f;->g:Le8/d;

    iput-object p8, p0, Li8/f;->h:Le8/n;

    iput p9, p0, Li8/f;->i:I

    iput p10, p0, Li8/f;->j:I

    iput p11, p0, Li8/f;->k:I

    return-void
.end method


# virtual methods
.method public a(Le8/x;)Le8/z;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Li8/f;->b:Lh8/g;

    iget-object v1, p0, Li8/f;->c:Li8/c;

    iget-object v2, p0, Li8/f;->d:Lh8/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p0

    return-object p0
.end method

.method public b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Li8/f;->e:I

    iget-object v2, v0, Li8/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_110

    iget v1, v0, Li8/f;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Li8/f;->l:I

    iget-object v1, v0, Li8/f;->c:Li8/c;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_44

    iget-object v1, v0, Li8/f;->d:Lh8/c;

    move-object/from16 v10, p1

    iget-object v4, v10, Le8/x;->a:Le8/r;

    invoke-virtual {v1, v4}, Lh8/c;->k(Le8/r;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_46

    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Li8/f;->a:Ljava/util/List;

    iget v0, v0, Li8/f;->e:I

    sub-int/2addr v0, v2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    move-object/from16 v10, p1

    :goto_46
    iget-object v1, v0, Li8/f;->c:Li8/c;

    const-string v15, " must call proceed() exactly once"

    if-eqz v1, :cond_6e

    iget v1, v0, Li8/f;->l:I

    if-gt v1, v2, :cond_51

    goto :goto_6e

    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Li8/f;->a:Ljava/util/List;

    iget v0, v0, Li8/f;->e:I

    sub-int/2addr v0, v2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6e
    :goto_6e
    new-instance v1, Li8/f;

    iget-object v2, v0, Li8/f;->a:Ljava/util/List;

    iget v14, v0, Li8/f;->e:I

    add-int/lit8 v9, v14, 0x1

    iget-object v11, v0, Li8/f;->g:Le8/d;

    iget-object v12, v0, Li8/f;->h:Le8/n;

    iget v13, v0, Li8/f;->i:I

    iget v8, v0, Li8/f;->j:I

    iget v7, v0, Li8/f;->k:I

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v6, p2

    move/from16 v16, v7

    move-object/from16 v7, p3

    move/from16 v17, v8

    move-object/from16 v8, p4

    move-object/from16 v10, p1

    move-object/from16 v18, v3

    move v3, v14

    move/from16 v14, v17

    move-object/from16 v19, v15

    move/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Li8/f;-><init>(Ljava/util/List;Lh8/g;Li8/c;Lh8/c;ILe8/x;Le8/d;Le8/n;III)V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/s;

    invoke-interface {v2, v1}, Le8/s;->intercept(Le8/s$a;)Le8/z;

    move-result-object v3

    if-eqz p3, :cond_d3

    iget v4, v0, Li8/f;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget-object v0, v0, Li8/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_d3

    iget v0, v1, Li8/f;->l:I

    if-ne v0, v5, :cond_b7

    goto :goto_d3

    :cond_b7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d3
    :goto_d3
    const-string v0, "interceptor "

    if-eqz v3, :cond_f6

    iget-object v1, v3, Le8/z;->g:Le8/b0;

    if-eqz v1, :cond_dc

    return-object v3

    :cond_dc
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a response with no body"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f6
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_110
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
