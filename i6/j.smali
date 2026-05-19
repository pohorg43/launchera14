.class public Li6/j;
.super Ljava/io/IOException;
.source ""


# instance fields
.field public a:Li6/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Li6/j;->a:Li6/p;

    return-void
.end method

.method public static a()Li6/j;
    .registers 2

    new-instance v0, Li6/j;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Li6/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Li6/j;
    .registers 2

    new-instance v0, Li6/j;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Li6/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Li6/j;
    .registers 2

    new-instance v0, Li6/j;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Li6/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c(Li6/p;)Li6/j;
    .registers 2

    iput-object p1, p0, Li6/j;->a:Li6/p;

    return-object p0
.end method
