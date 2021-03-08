.class public Lcom/zf/dsmfj/SpecialAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SpecialAdapter.java"


# instance fields
.field private instance:Landroid/content/Context;

.field li:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private tface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 26
    iput-object p2, p0, Lcom/zf/dsmfj/SpecialAdapter;->li:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/GirlType.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    .line 28
    iput-object p1, p0, Lcom/zf/dsmfj/SpecialAdapter;->instance:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 123
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 125
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 126
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 129
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    invoke-super/range {p0 .. p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 33
    .local v17, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->li:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 52
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const v18, 0x7f0700a0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 53
    .local v14, "tname":Landroid/widget/TextView;
    if-eqz v14, :cond_0

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    :cond_0
    const v18, 0x7f07003c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 56
    .local v9, "tdate":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    :cond_1
    const v18, 0x7f0700a1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 59
    .local v16, "tsuccnbr":Landroid/widget/TextView;
    if-eqz v16, :cond_2

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    :cond_2
    const v18, 0x7f070098

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 64
    .local v4, "ihouseimg":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 66
    :try_start_0
    const-string v18, "imgres"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 67
    .local v5, "imgres":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->instance:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/zf/dsmfj/SpecialAdapter;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v5    # "imgres":I
    :cond_3
    :goto_0
    const v18, 0x7f07009a

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 73
    .local v6, "iselimg":Landroid/widget/ImageView;
    if-eqz v6, :cond_4

    .line 75
    :try_start_1
    const-string v18, "sel"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 76
    .local v8, "selimg":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->instance:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/zf/dsmfj/SpecialAdapter;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v8    # "selimg":I
    :cond_4
    :goto_1
    const v18, 0x7f070099

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 82
    .local v13, "thname":Landroid/widget/TextView;
    if-eqz v13, :cond_5

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    :cond_5
    const v18, 0x7f07009b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 85
    .local v15, "tprice":Landroid/widget/TextView;
    if-eqz v15, :cond_6

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    :cond_6
    const v18, 0x7f07009c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 88
    .local v10, "tdes":Landroid/widget/TextView;
    if-eqz v10, :cond_7

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    :cond_7
    const-string v18, "gift"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, "gift":Ljava/lang/String;
    if-nez v3, :cond_a

    .line 92
    const v18, 0x7f07009d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 93
    .local v12, "tgifttitle":Landroid/widget/TextView;
    if-eqz v12, :cond_8

    .line 94
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_8
    const v18, 0x7f07009e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 96
    .local v11, "tgift":Landroid/widget/TextView;
    if-eqz v11, :cond_9

    .line 97
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_9
    :goto_2
    return-object v17

    .line 68
    .end local v3    # "gift":Ljava/lang/String;
    .end local v6    # "iselimg":Landroid/widget/ImageView;
    .end local v10    # "tdes":Landroid/widget/TextView;
    .end local v11    # "tgift":Landroid/widget/TextView;
    .end local v12    # "tgifttitle":Landroid/widget/TextView;
    .end local v13    # "thname":Landroid/widget/TextView;
    .end local v15    # "tprice":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "iselimg":Landroid/widget/ImageView;
    :catch_1
    move-exception v2

    .line 78
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "gift":Ljava/lang/String;
    .restart local v10    # "tdes":Landroid/widget/TextView;
    .restart local v13    # "thname":Landroid/widget/TextView;
    .restart local v15    # "tprice":Landroid/widget/TextView;
    :cond_a
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 100
    const v18, 0x7f07009d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 101
    .restart local v12    # "tgifttitle":Landroid/widget/TextView;
    if-eqz v12, :cond_b

    .line 102
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_b
    const v18, 0x7f07009e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 104
    .restart local v11    # "tgift":Landroid/widget/TextView;
    if-eqz v11, :cond_9

    .line 105
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 108
    .end local v11    # "tgift":Landroid/widget/TextView;
    .end local v12    # "tgifttitle":Landroid/widget/TextView;
    :cond_c
    const v18, 0x7f07009d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 109
    .restart local v12    # "tgifttitle":Landroid/widget/TextView;
    if-eqz v12, :cond_d

    .line 110
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    :cond_d
    const v18, 0x7f07009e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 114
    .restart local v11    # "tgift":Landroid/widget/TextView;
    if-eqz v11, :cond_9

    .line 115
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zf/dsmfj/SpecialAdapter;->tface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2
.end method
