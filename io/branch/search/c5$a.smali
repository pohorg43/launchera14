.class public final Lio/branch/search/c5$a;
.super Ll4/a;
.source ""

# interfaces
.implements Lm7/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/c5;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ll4/f$b;)V
    .registers 2

    invoke-direct {p0, p1}, Ll4/a;-><init>(Ll4/f$b;)V

    return-void
.end method


# virtual methods
.method public handleException(Ll4/f;Ljava/lang/Throwable;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception on context "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BNCScope"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    if-nez v0, :cond_54

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_54
    invoke-static {p1, p2}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
