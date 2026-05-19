.class public final Ls8/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:[B

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:J

.field public R:[B

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:[B

.field public a:Ls8/i;

.field public b:Ls8/i;

.field public final c:Ls8/a;

.field public d:[B

.field public final e:[I

.field public final f:[I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Ls8/g;

.field public final l:Ls8/g;

.field public final m:Ls8/g;

.field public final n:[I

.field public final o:[I

.field public final p:[I

.field public final q:[I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:[B

.field public z:[B


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ls8/i;->a:Ls8/i;

    iput-object v0, p0, Ls8/j;->a:Ls8/i;

    new-instance v0, Ls8/a;

    invoke-direct {v0}, Ls8/a;-><init>()V

    iput-object v0, p0, Ls8/j;->c:Ls8/a;

    const/16 v0, 0xca8

    new-array v1, v0, [I

    iput-object v1, p0, Ls8/j;->e:[I

    new-array v0, v0, [I

    iput-object v0, p0, Ls8/j;->f:[I

    new-instance v0, Ls8/g;

    invoke-direct {v0}, Ls8/g;-><init>()V

    iput-object v0, p0, Ls8/j;->k:Ls8/g;

    new-instance v0, Ls8/g;

    invoke-direct {v0}, Ls8/g;-><init>()V

    iput-object v0, p0, Ls8/j;->l:Ls8/g;

    new-instance v0, Ls8/g;

    invoke-direct {v0}, Ls8/g;-><init>()V

    iput-object v0, p0, Ls8/j;->m:Ls8/g;

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Ls8/j;->n:[I

    new-array v0, v0, [I

    iput-object v0, p0, Ls8/j;->o:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Ls8/j;->p:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    iput-object v0, p0, Ls8/j;->q:[I

    const/4 v0, 0x0

    iput v0, p0, Ls8/j;->r:I

    iput v0, p0, Ls8/j;->s:I

    iput v0, p0, Ls8/j;->t:I

    iput-boolean v0, p0, Ls8/j;->u:Z

    iput v0, p0, Ls8/j;->P:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ls8/j;->Q:J

    new-array v1, v0, [B

    iput-object v1, p0, Ls8/j;->R:[B

    iput v0, p0, Ls8/j;->S:I

    return-void

    nop

    :array_5a
    .array-data 4
        0x10
        0xf
        0xb
        0x4
    .end array-data
.end method

.method public static a(Ls8/j;Ljava/io/InputStream;)V
    .registers 7

    iget-object v0, p0, Ls8/j;->a:Ls8/i;

    sget-object v1, Ls8/i;->a:Ls8/i;

    if-ne v0, v1, :cond_77

    iget-object v0, p0, Ls8/j;->c:Ls8/a;

    iget-object v1, v0, Ls8/a;->d:Ljava/io/InputStream;

    if-nez v1, :cond_6f

    iput-object p1, v0, Ls8/a;->d:Ljava/io/InputStream;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Ls8/a;->f:J

    iget-object p1, v0, Ls8/a;->b:Ljava/nio/IntBuffer;

    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p1, 0x40

    iput p1, v0, Ls8/a;->g:I

    const/4 p1, 0x0

    iput p1, v0, Ls8/a;->h:I

    iput-boolean p1, v0, Ls8/a;->e:Z

    invoke-static {v0}, Ls8/a;->d(Ls8/a;)V

    iget p1, v0, Ls8/a;->h:I

    if-eqz p1, :cond_67

    invoke-static {v0}, Ls8/a;->a(Ls8/a;)V

    invoke-static {v0}, Ls8/a;->a(Ls8/a;)V

    iget-object p1, p0, Ls8/j;->c:Ls8/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ls8/a;->c(Ls8/a;I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_3c

    move v4, v2

    goto :goto_4f

    :cond_3c
    const/4 v1, 0x3

    invoke-static {p1, v1}, Ls8/a;->c(Ls8/a;I)I

    move-result v3

    const/16 v4, 0x11

    if-eqz v3, :cond_47

    add-int/2addr v4, v3

    goto :goto_4f

    :cond_47
    invoke-static {p1, v1}, Ls8/a;->c(Ls8/a;I)I

    move-result p1

    if-eqz p1, :cond_4f

    add-int/lit8 v4, p1, 0x8

    :cond_4f
    :goto_4f
    const/16 p1, 0x9

    if-eq v4, p1, :cond_5f

    shl-int p1, v0, v4

    iput p1, p0, Ls8/j;->O:I

    sub-int/2addr p1, v2

    iput p1, p0, Ls8/j;->N:I

    sget-object p1, Ls8/i;->b:Ls8/i;

    iput-object p1, p0, Ls8/j;->a:Ls8/i;

    return-void

    :cond_5f
    new-instance p0, Ls8/c;

    const-string p1, "Invalid \'windowBits\' code"

    invoke-direct {p0, p1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    new-instance p0, Ls8/c;

    const-string p1, "Can\'t initialize reader"

    invoke-direct {p0, p1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bit reader already has associated input stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State MUST be uninitialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
