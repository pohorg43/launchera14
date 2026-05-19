.class public final synthetic Lcom/android/launcher/db/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/net/Uri;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[Ljava/lang/String;

.field public final synthetic g:[Landroid/content/ContentValues;

.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Landroid/os/Bundle;

.field public final synthetic l:Ljava/lang/Integer;

.field public final synthetic m:Ljava/lang/Boolean;

.field public final synthetic n:Ljava/lang/Boolean;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/Boolean;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v15, p18

    iput v15, v0, Lcom/android/launcher/db/a;->a:I

    const/4 v14, 0x1

    if-eq v15, v14, :cond_55

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/launcher/db/a;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/launcher/db/a;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/launcher/db/a;->d:Landroid/net/Uri;

    iput-object v4, v0, Lcom/android/launcher/db/a;->e:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/launcher/db/a;->f:[Ljava/lang/String;

    iput-object v6, v0, Lcom/android/launcher/db/a;->g:[Landroid/content/ContentValues;

    iput-object v7, v0, Lcom/android/launcher/db/a;->h:Ljava/util/ArrayList;

    iput-object v8, v0, Lcom/android/launcher/db/a;->i:Ljava/lang/String;

    iput-object v9, v0, Lcom/android/launcher/db/a;->j:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/launcher/db/a;->k:Landroid/os/Bundle;

    iput-object v11, v0, Lcom/android/launcher/db/a;->l:Ljava/lang/Integer;

    iput-object v12, v0, Lcom/android/launcher/db/a;->m:Ljava/lang/Boolean;

    iput-object v13, v0, Lcom/android/launcher/db/a;->n:Ljava/lang/Boolean;

    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/launcher/db/a;->o:Ljava/lang/String;

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/launcher/db/a;->p:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher/db/a;->q:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/launcher/db/a;->r:Ljava/lang/String;

    return-void

    :cond_55
    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/launcher/db/a;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/launcher/db/a;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/launcher/db/a;->d:Landroid/net/Uri;

    iput-object v4, v0, Lcom/android/launcher/db/a;->e:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/launcher/db/a;->f:[Ljava/lang/String;

    iput-object v6, v0, Lcom/android/launcher/db/a;->g:[Landroid/content/ContentValues;

    iput-object v7, v0, Lcom/android/launcher/db/a;->h:Ljava/util/ArrayList;

    iput-object v8, v0, Lcom/android/launcher/db/a;->i:Ljava/lang/String;

    iput-object v9, v0, Lcom/android/launcher/db/a;->j:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/launcher/db/a;->k:Landroid/os/Bundle;

    iput-object v11, v0, Lcom/android/launcher/db/a;->l:Ljava/lang/Integer;

    iput-object v12, v0, Lcom/android/launcher/db/a;->m:Ljava/lang/Boolean;

    iput-object v13, v0, Lcom/android/launcher/db/a;->n:Ljava/lang/Boolean;

    iput-object v14, v0, Lcom/android/launcher/db/a;->o:Ljava/lang/String;

    iput-object v15, v0, Lcom/android/launcher/db/a;->p:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher/db/a;->q:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/launcher/db/a;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 36

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher/db/a;->a:I

    packed-switch v1, :pswitch_data_7c

    goto :goto_34

    :pswitch_8  #0x0
    iget-object v2, v0, Lcom/android/launcher/db/a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher/db/a;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher/db/a;->d:Landroid/net/Uri;

    iget-object v5, v0, Lcom/android/launcher/db/a;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/launcher/db/a;->f:[Ljava/lang/String;

    iget-object v7, v0, Lcom/android/launcher/db/a;->g:[Landroid/content/ContentValues;

    iget-object v8, v0, Lcom/android/launcher/db/a;->h:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/launcher/db/a;->i:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/launcher/db/a;->j:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/launcher/db/a;->k:Landroid/os/Bundle;

    iget-object v12, v0, Lcom/android/launcher/db/a;->l:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/android/launcher/db/a;->m:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/android/launcher/db/a;->n:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/android/launcher/db/a;->o:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/launcher/db/a;->p:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->q:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/android/launcher/db/a;->r:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v2 .. v18}, Lcom/android/launcher/db/DbTracker;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_34
    iget-object v1, v0, Lcom/android/launcher/db/a;->b:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->c:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->d:Landroid/net/Uri;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->e:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->f:[Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->g:[Landroid/content/ContentValues;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->h:Ljava/util/ArrayList;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->i:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->j:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->k:Landroid/os/Bundle;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->l:Ljava/lang/Integer;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->m:Ljava/lang/Boolean;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->n:Ljava/lang/Boolean;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->o:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->p:Ljava/lang/Boolean;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/launcher/db/a;->q:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v0, v0, Lcom/android/launcher/db/a;->r:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v18 .. v34}, Lcom/android/launcher/db/DbTracker;->d(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
