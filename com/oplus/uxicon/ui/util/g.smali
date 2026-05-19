.class public Lcom/oplus/uxicon/ui/util/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/oplus/uxicon/ui/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/uxicon/ui/util/b<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/oplus/uxicon/ui/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/uxicon/ui/util/b<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/oplus/uxicon/ui/util/b;->a()Lcom/oplus/uxicon/ui/util/b;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/b;->a()Lcom/oplus/uxicon/ui/util/b;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/util/g;->b:Lcom/oplus/uxicon/ui/util/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->b:Lcom/oplus/uxicon/ui/util/b;

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 3

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/g;->d(Ljava/io/File;)V

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 4

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->b:Lcom/oplus/uxicon/ui/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-static {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/io/File;)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const-string v0, "#"

    invoke-static {p0, v0, p1}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "#"

    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->b:Lcom/oplus/uxicon/ui/util/b;

    invoke-virtual {v0, p0}, Lcom/oplus/uxicon/ui/util/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/io/File;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/g;->d(Ljava/io/File;)V

    return-void
.end method

.method public static d(Ljava/io/File;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->a:Lcom/oplus/uxicon/ui/util/b;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_31
    return-void
.end method
