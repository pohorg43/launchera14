.class public final Li8/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le8/v;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le8/v;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/j;->a:Le8/v;

    iput p2, p0, Li8/j;->b:I

    iput-object p3, p0, Li8/j;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Li8/j;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Le8/v;->b:Le8/v;

    const-string v1, "HTTP/1."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x4

    const/16 v4, 0x9

    const-string v5, "Unexpected status line: "

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_39

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_39

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-nez v1, :cond_29

    goto :goto_4c

    :cond_29
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2f

    sget-object v0, Le8/v;->c:Le8/v;

    goto :goto_4c

    :cond_2f
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v5, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v5, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    const-string v1, "ICY "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    move v4, v3

    :goto_4c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v6, v4, 0x3

    if-lt v1, v6, :cond_8a

    :try_start_54
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_5c} :catch_80

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_78

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_6e

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7a

    :cond_6e
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v5, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    const-string p0, ""

    :goto_7a
    new-instance v2, Li8/j;

    invoke-direct {v2, v0, v1, p0}, Li8/j;-><init>(Le8/v;ILjava/lang/String;)V

    return-object v2

    :catch_80
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v5, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v5, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v5, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li8/j;->a:Le8/v;

    sget-object v2, Le8/v;->b:Le8/v;

    if-ne v1, v2, :cond_e

    const-string v1, "HTTP/1.0"

    goto :goto_10

    :cond_e
    const-string v1, "HTTP/1.1"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Li8/j;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li8/j;->c:Ljava/lang/String;

    if-eqz v2, :cond_29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Li8/j;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
