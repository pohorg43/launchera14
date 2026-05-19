.class public final Lk7/e$a;
.super Li4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/e;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk7/e;


# direct methods
.method public constructor <init>(Lk7/e;)V
    .registers 2

    iput-object p1, p0, Lk7/e$a;->a:Lk7/e;

    invoke-direct {p0}, Li4/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Li4/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lk7/e$a;->a:Lk7/e;

    iget-object p0, p0, Lk7/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    const-string p0, ""

    :cond_c
    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget-object p0, p0, Lk7/e$a;->a:Lk7/e;

    iget-object p0, p0, Lk7/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Li4/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Li4/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
