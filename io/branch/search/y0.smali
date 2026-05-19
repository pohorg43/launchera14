.class public abstract Lio/branch/search/y0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/y0$a;
    }
.end annotation


# static fields
.field public static a:Lio/branch/search/y0;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/branch/search/y0;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lio/branch/search/y0;->a:Lio/branch/search/y0;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/b1;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/b1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/search/y0;->a:Lio/branch/search/y0;

    :cond_13
    sget-object v0, Lio/branch/search/y0;->a:Lio/branch/search/y0;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lio/branch/search/z0;)Lp1/c;
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/z0;",
            ")",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract a(Lio/branch/search/z0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lio/branch/search/z0;Lio/branch/search/y0$a;)V
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/y0$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public abstract b(Lio/branch/search/z0;)Lp1/c;
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/z0;",
            ")",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method
