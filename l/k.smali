.class public Ll/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ll/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ll/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/a;Ll/a;Ll/b;Ll/b;)V
    .registers 5
    .param p1  # Ll/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Ll/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/k;->a:Ll/a;

    iput-object p2, p0, Ll/k;->b:Ll/a;

    iput-object p3, p0, Ll/k;->c:Ll/b;

    iput-object p4, p0, Ll/k;->d:Ll/b;

    return-void
.end method
