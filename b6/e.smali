.class public Lb6/e;
.super Lb6/b$b;
.source ""


# instance fields
.field public final synthetic b:Lb6/b$d;


# direct methods
.method public constructor <init>(Lb6/b$d;)V
    .registers 2

    iput-object p1, p0, Lb6/e;->b:Lb6/b$d;

    invoke-direct {p0}, Lb6/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public f([Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    iget-object p0, p0, Lb6/e;->b:Lb6/b$d;

    iget-object p0, p0, Lb6/b$d;->a:Lb6/b;

    iput-object p1, p0, Lb6/b;->i:[Ljava/lang/String;

    return-void

    :cond_9
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "result"

    aput-object v0, p0, p1

    const/4 p1, 0x1

    const-string v0, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1"

    aput-object v0, p0, p1

    const/4 p1, 0x2

    const-string v0, "visitEnd"

    aput-object v0, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
