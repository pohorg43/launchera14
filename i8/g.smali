.class public final Li8/g;
.super Le8/b0;
.source ""


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:J

.field public final c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/BufferedSource;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Le8/b0;-><init>()V

    iput-object p1, p0, Li8/g;->a:Ljava/lang/String;

    iput-wide p2, p0, Li8/g;->b:J

    iput-object p4, p0, Li8/g;->c:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public b()J
    .registers 3

    iget-wide v0, p0, Li8/g;->b:J

    return-wide v0
.end method

.method public c()Le8/t;
    .registers 1

    iget-object p0, p0, Li8/g;->a:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Le8/t;->b(Ljava/lang/String;)Le8/t;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public e()Lokio/BufferedSource;
    .registers 1

    iget-object p0, p0, Li8/g;->c:Lokio/BufferedSource;

    return-object p0
.end method
