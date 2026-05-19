.class public final Lz5/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc7/i;

.field public final b:Lr5/b0;

.field public final c:Lc7/o;


# direct methods
.method public constructor <init>(Lc7/i;Lr5/b0;Lc7/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/a$a;->a:Lc7/i;

    iput-object p2, p0, Lz5/a$a;->b:Lr5/b0;

    iput-object p3, p0, Lz5/a$a;->c:Lc7/o;

    return-void
.end method
