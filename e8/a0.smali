.class public Le8/a0;
.super Le8/b0;
.source ""


# instance fields
.field public final synthetic a:Le8/t;

.field public final synthetic b:J

.field public final synthetic c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Le8/t;JLokio/BufferedSource;)V
    .registers 5

    iput-object p1, p0, Le8/a0;->a:Le8/t;

    iput-wide p2, p0, Le8/a0;->b:J

    iput-object p4, p0, Le8/a0;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Le8/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public b()J
    .registers 3

    iget-wide v0, p0, Le8/a0;->b:J

    return-wide v0
.end method

.method public c()Le8/t;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Le8/a0;->a:Le8/t;

    return-object p0
.end method

.method public e()Lokio/BufferedSource;
    .registers 1

    iget-object p0, p0, Le8/a0;->c:Lokio/BufferedSource;

    return-object p0
.end method
